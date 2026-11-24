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
            'id': '001',
            'name': 'item1',
            'createdAt': _createdAt, //
            'catalogItem': {
              'id': '001',
              'name': 'service1',
              'createdAt': _createdAt, //
              'productId': "product-001",
              'minPrice': 1000.0,
              'maxPrice': 1000.0,
              'basePrice': 1000.0,
              'estimatedDuration': 100,
              'description': 'my description',
              'currency': 'GNF',
              'serviceType': {
                'id': '001',
                'name': 'type1',
                'createdAt': _createdAt, //
                'description': '',
                'isActive': true,
                'iconName': null,
                'colorValue': null,
                'pricingType': PricingType.perItem.name,
                'servicesCount': 1,
              },
            },
            'qty': 1,
            'total': 1000.0,
            'options': {},
          },
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
      expect(cart.items[0].catalogItem.name, 'service1');
      expect(cart.items[0].catalogItem.serviceType.name, 'type1');
    });
  });
}
