import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/enum/enum_order_status.dart';
import 'package:movegui_core/models/company/company_catalog_item_model.dart';
import 'package:movegui_core/models/company/company_order_model.dart';
import 'package:movegui_core/models/company/company_order_item_model.dart';
import 'package:movegui_core/models/company/company_product_model.dart';

void main() {
  group('Order test', () {
    test('Order Model test', () {
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

      final order = CompanyOrderModel.fromJson(
        json,
        orderItemFormJson: (itemJson) =>
            CompanyOrderItemModel<CompanyProductModel,
                CompanyCatalogItemModel<CompanyProductModel>>.fromJson(
          itemJson,
          catalogFromJson:
              CompanyCatalogItemModel<CompanyProductModel>.fromJson,
        ),
      );
      expect(order.status, OrderStatus.pending);
      

    });
  });
}
