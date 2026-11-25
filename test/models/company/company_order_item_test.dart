import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/company/company_catalog_item_model.dart';
import 'package:movegui_core/models/company/company_order_item_model.dart';

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
      final item = CompanyOrderItemModel.fromJson(
        json,
        catalogFromJson: (catalogJson) =>
            CompanyCatalogItemModel.fromJson(catalogJson),
      );
      expect(item.name, 'item-001');
      expect(item.catalogItem.name, 'catalogItem-001');
    });
  });
}
