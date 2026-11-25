import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/company/company_catalog_item_model.dart';
import 'package:movegui_core/models/company/company_catalog_model.dart';
import 'package:movegui_core/models/company/company_model.dart';

void main() {
  group('catalog test', () {
    test('Catalog model test', () {
      final json = {
        'id': 'catalog-001',
        'name': 'catalog-001',
        'createdAt': DateTime.now().toIso8601String(),
        'description': 'catelog description',
        'isActive': true,
        'items': [
          {
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
          },
        ],
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
      final catalog =
          CompanyCatalogModel<CompanyModel, CompanyCatalogItemModel>.fromJson(
            json,
            catalogItemFronJson: (itemJson) => CompanyCatalogItemModel.fromJson(
              Map<String, dynamic>.from(itemJson),
            ),
          );
      expect(catalog.name, 'catalog-001');
      expect(catalog.items.first.name, 'catalogItem-001');
    });
  });
}
