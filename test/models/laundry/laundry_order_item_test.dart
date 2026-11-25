import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/laundry/laundry_order_item.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';

void main() {
  group('order item', () {
    test('company order item model test', () {
      final json = {
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
      };
      final item = LaundryOrderItem.fromJson(json);
      expect(item.name, 'item-001');
      expect(item.catalogItem.name, 'catalogItem-001');
    });
  });
}
