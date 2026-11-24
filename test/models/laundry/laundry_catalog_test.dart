import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/laundry/laundry_catalog_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';

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
            'serviceType': {
              'id': 'service-001',
              'name': 'service-001',
              'createdAt': DateTime.now().toIso8601String(),
              'description': 'service description',
              'isActive': true,
              'pricingType': PricingType.perItem.name,
              'servicesCount': 1,
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
          LaundryCatalogModel.fromJson(
            json,
          );
      expect(catalog.name, 'catalog-001');
      expect(catalog.items.first.name, 'catalogItem-001');
      expect(catalog.items.first.serviceType.name, 'service-001');
    });
  });
}
