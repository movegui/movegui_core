import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/cart_model.dart';
import 'package:movegui_core/models/laundry/laundry_model.dart';
import 'package:movegui_core/models/laundry/laundry_order_item.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/models/user/user_model.dart';

final _createdAt = DateTime.utc(2025, 1, 2, 3, 4).toIso8601String();

void main() {
  group('cart_model_test', () {
    test('should deserialize CartModel correctly', () {
      final json = {
        'id': 'cart_1',
        'name': 'My Cart',
        'storeId': 'store_1',
        'userId': 'user_1',
        'createdAt': _createdAt, // DateTime.now().toIso8601String(),
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
      }
        ],
      };

      final cart =
          CartModel<LaundryModel, UserModel, LaundryOrderItem>.fromJson(
            json,
            itemFromJson: LaundryOrderItem.fromJson,
          );

      expect(cart.storeId, 'store_1');
      expect(cart.userId, 'user_1');
      expect(cart.items, hasLength(1));
      expect(cart.items[0].catalogItem.name, 'catalogItem-001');
      expect(cart.items[0].catalogItem.serviceType.name, 'service-001');
    });
  });
}
