import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/enum/enum_order_status.dart';
import 'package:movegui_core/models/laundry/laundry_order_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';

void main() {
  group('Order test', () {
    test('laundry Model test', () {
      final json = {
        'id': 'order-001',
        'name': 'order-001',
        'createdAt': DateTime.now().toIso8601String(),
        'description': 'order description',
        'isActive': true,
        'customerId': 'cust-001',
        'items': [
          {
            'id': 'item-001',
            'name': 'item-001',
            'createdAt': DateTime.now().toIso8601String(),
            'description': 'item description',
            'isActive': true,
            'catalogItem': {
              'id': 'catalogItem-001',
              'name': 'catalogItem-001',
              'createdAt': DateTime.now().toIso8601String(),
              'description': 'catalog description',
              'isActive': true,
              'productId': 'product-001',
              'minPrice': 1000.0,
              'maxPrice': 1000.0,
              'basePrice': 1000.0,
              'estimatedDuration': 3600,
              'currency': 'GNF',
              'establishmentCategory': {
                'id': 'laundry',
                'name': 'Establishment',
                'establishmentType': {
                  'module': 'laundry',
                  'nameKey': 'module_pressing_name',
                },
              },
              'establishmentType': {
                'module': 'laundry',
                'nameKey': 'module_pressing_name',
              },
              'serviceType': {
                'id': 'servie-001',
                'name': 'service-001',
                'createdAt': DateTime.now().toIso8601String(),
                'description': 'service description',
                'isActive': true,
                'pricingType': PricingType.perItem.name,
                'servicesCount': 1,
              },
            },

            'qty': 5,
            'options': {},
            'establishmentCategory': {
              'id': 'laundry',
              'name': 'Establishment',
              'establishmentType': {
                'module': 'laundry',
                'nameKey': 'module_pressing_name',
              },
            },
            'establishmentType': {
              'module': 'laundry',
              'nameKey': 'module_pressing_name',
            },
            'unitPrice': 500.0,
          },
        ],
        'total': 2500.0,
        'status': OrderStatus.pending.name,
        'orderId': 'ord-001',
        'currency': 'GNF',
        'storeId': 'company-001',
        'pickupDate': DateTime.now(),
        'deliveryDate': DateTime.now(),
        'pickupAdress': {
          'id': 'address-1',
          'name': 'Home',
          'createdAt': DateTime.now(),
          'address': '12 Main St',
          'district': 'Centre',
          'minucipality': 'di',
          'adressType': 'home',
          'geoCordinates': {'longitude': 10.0, 'latitude': 20.0},
        },
        'deliveryAdress': {
          'id': 'address-1',
          'name': 'Home',
          'createdAt': DateTime.now(),
          'address': '12 Main St',
          'district': 'Centre',
          'minucipality': 'di',
          'adressType': 'home',
          'geoCordinates': {'longitude': 10.0, 'latitude': 20.0},
        },
        'establishmentType': {
          'module': 'laundry',
          'nameKey': 'module_pressing_name',
        },
      };

      final order = LaundryOrderModel.fromJson(json);
      expect(order.status, OrderStatus.pending);
    });
  });
}
