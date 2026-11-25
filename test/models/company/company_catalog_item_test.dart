import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/company/company_catalog_item_model.dart';

void main() {
  group('company catalog item test', () {
    test('model test', () {
      final json = {
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
      };
      final catalog = CompanyCatalogItemModel.fromJson(json);
      expect(catalog.minPrice, 1000.0);
    });
  });
}
