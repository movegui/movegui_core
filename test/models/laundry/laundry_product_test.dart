import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';

void main() {
  group("laundry product", () {
    test('test product model', () {
      final json = {
        'id': 'product-001',
        'name': 'product-001',
        'createdAt': DateTime.now().toIso8601String(),
        'description': 'first product',
        'isActive': true,
        'supplierId': 'supplier-001',
        'price': 1000.0,
        'isAvailable': true,
        'imageUrl': 'asstes/image.png',
        'category': '',
        'currency': 'GNF',

        'materials': {'autre': "fais gaffe"},
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
      };

      final product = LaundryProductModel.fromJson(json);
      expect(product.name, 'product-001');
      expect(
        product.establishmentCategory,
        EstablishmentCategory.laundry_etablishment,
      );
      expect(product.establishmentType, EstablishmentType.laundry);
    });
  });
}
