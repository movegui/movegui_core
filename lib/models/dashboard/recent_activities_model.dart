import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movegui_core/enum/enum_activity_type.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/model.dart';

class RecentActivitiesModel extends Model {
  final EstablishmentType establishmentType;
  final ActivityCategory category;
  final String title;
  final String? establishmentId;
  final String? userId;
  final String? orderId;
  final Map<String, dynamic> metadata;
  final ActivityType activityType;

  RecentActivitiesModel({
    required this.establishmentType,
    required this.category,
    required this.title,
    required this.metadata,
    this.establishmentId,
    this.userId,
    this.orderId,
    required super.id,
    required super.name,
    required super.createdAt,
    super.description,
    required this.activityType,
  });

  factory RecentActivitiesModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> document,
  ) {
    final data = document.data()!;

    return RecentActivitiesModel(
      id: document.id,
      establishmentType: EstablishmentType.fromJson(data['establishmentType']),
      category: ActivityCategory.values.firstWhere(
        (category) => category.name == data['category'],
        orElse: () => ActivityCategory.system,
      ),
      title: data['title'] as String? ?? '',
      description: data['description'] as String? ?? '',
      establishmentId: data['establishmentId'] as String?,
      userId: data['userId'] as String?,
      orderId: data['orderId'] as String?,
      createdAt: (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      metadata: Map<String, dynamic>.from(data['metadata'] as Map? ?? {}),
      name: data['name'],
      activityType: ActivityType.values.firstWhere(
        (value) => value.name == data['activityType'].name,
      ),
    );
  }

  factory RecentActivitiesModel.fromjson(Map<String, dynamic> json) {

    final rawActivityType = json['activityType'];
    final String normalizedActivityTypeId = rawActivityType is Map
        ? (rawActivityType['id'] as String? ??
              rawActivityType['name'] as String? ??
              'other')
        : (rawActivityType is String ? rawActivityType : 'other');

    return RecentActivitiesModel(
      establishmentType: EstablishmentType.fromJson(json['establishmentType']),
      
      category: ActivityCategory.values.firstWhere(
        (category) => category.name == json['category'],
        orElse: () => ActivityCategory.system,
      ),
      title: json['title'],
      metadata: Map<String, dynamic>.from(json['metadata'] as Map? ?? {}),
      id: json['id'],
      name: json['name'],
      createdAt: json['createdAt'] != null
          ? Model.parseDateTime(json['createdAt'])
          : DateTime.now(),

      activityType: ActivityType.values.firstWhere(
        (store) =>
            store.id == normalizedActivityTypeId ||
            store.name == normalizedActivityTypeId,
        orElse: () => ActivityType.other,
      ),
      userId: json['userId'],
      orderId: json['orderId'],
      establishmentId: json['establishmentId']

      /*
        activityType: ActivityType.values.firstWhere(
          (value) => value.name == json['activityType'].name,
        ),
        */
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'establishmentType': establishmentType.toJson(),
    'category': category,
    'title': title,
    'metadata': metadata,
    'establishmentId': establishmentId,
    'userId': userId,
    'orderId': orderId,
    'activityType': activityType,
  };
}
