import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/enum/enum_order_status.dart';
import 'package:movegui_core/enum/enum_user_role.dart';
import 'package:movegui_core/models/dashboard/dashboard_model_data.dart';
import 'package:movegui_core/services/api_service.dart';



class DashboardService {
  final ApiService api;
  DashboardService({required this.api});

   Future<DashboardModelData> loadDashboardItems(
    FirebaseFirestore firestore,
  ) async {
    try {
    final results = await Future.wait<int>([
      
      
      _count(firestore.collection(MoveGuiCollections.COLLECTION_ORDERS)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_ORDERS).where('status', isEqualTo: OrderStatus.pending.name)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_ORDERS).where('status', isEqualTo: OrderStatus.inProgress.name)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_ORDERS).where('status', isEqualTo: OrderStatus.delivered.name)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_ORDERS).where('status', isEqualTo: OrderStatus.completed.name)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_ORDERS).where('status', isEqualTo: OrderStatus.cancelled.name)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_USERS).where('role', isEqualTo: 'customer')),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_DRIVERS).where('role', isEqualTo: UserRole.Driver.name)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_DRIVERS).where('online', isEqualTo: true)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_RESTAURANTS)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_PRESSINGS)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_SUPER_MARKETS)),
      _count(firestore.collection(MoveGuiCollections.COLLECTION_PHARMACIES)),
      
      
    ]);

    final revenue = await _sumRevenue(firestore);

    return DashboardModelData(
      totalOrders: results[0],
      pendingOrders: results[1],
      preparingOrders: results[2],
      deliveringOrders: results[3],
      completedOrders: results[4],
      cancelledOrders: results[5],
      totalCustomers:   results[6],
      totalDrivers: results[7],
      onlineDrivers: results[8],
      restaurants: results[9],
      pressings: results[10],
      supermarkets: results[11],
      pharmacies: results[12],
      totalRevenue: revenue,
    );
    } catch (e) {
      print('Error loading dashboard items: $e');
      return DashboardModelData.empty();
    }

  }

  static Future<int> _count(Query<Map<String, dynamic>> query) async {
    final snapshot = await query.count().get();
    return snapshot.count ?? 0;
  }

  static Future<num> _sumRevenue(FirebaseFirestore firestore) async {
    // MVP simple : charge les commandes payées et additionne totalAmount.
    // Si tu as beaucoup de commandes, mieux vaut stocker les statistiques dans une collection dashboard_stats
    // avec Cloud Functions.
    final snapshot = await firestore
        .collection(MoveGuiCollections.COLLECTION_ORDERS)
        .where('paymentStatus', isEqualTo: 'paid')
        .get();

    num total = 0;
    for (final doc in snapshot.docs) {
      final data = doc.data();
      final amount = data['totalAmount'];
      if (amount is num) total += amount;
    }
    return total;
  }

   String formatGnf(num value) {
    final raw = value.round().toString();
    final buffer = StringBuffer();
    for (int i = 0; i < raw.length; i++) {
      final reverseIndex = raw.length - i;
      buffer.write(raw[i]);
      if (reverseIndex > 1 && reverseIndex % 3 == 1) {
        buffer.write(' ');
      }
    }
    return '${buffer.toString()} GNF';
  }
}




