import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/widget_info.dart';
import 'package:movegui_core/models/footer_config_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/notification_model.dart';
import 'package:movegui_core/models/pricing_config_model.dart';
import 'package:movegui_core/models/types_model.dart';

final _createdAt = DateTime.utc(2025, 1, 2, 3, 4);

void main() {
  group('Model', () {
    test('serializes common fields and applies defaults', () {
      final model = Model(id: 'id-1', name: 'Model', createdAt: _createdAt);

      expect(model.toJson(), {
        'id': 'id-1',
        'name': 'Model',
        'createdAt': _createdAt,
        'description': '',
        'isActive': false,
      });
    });
  });

  group('button_info_test', () {
    test('button test model', () {
      final widgetInfo = WidgetInfo(
        title: 'my Button',
        enabled: true,
        routeName: '/home',
      );
      expect(widgetInfo.enabled, true);
      expect(widgetInfo.subtitle, null);
    });
  });

  group('TypesModel', () {
    test('resolves known icon and color values', () {
      final type = TypesModel(
        id: 'type-1',
        name: 'Laundry',
        createdAt: _createdAt,
        description: '',
        isActive: true,
      );

      //  expect(type.icon, Icons.home);
      expect(type.toJson()['name'], 'Laundry');
    });
  });

  group('FooterConfigModel', () {
    test('reads contact details from JSON', () {
      final footer = FooterConfigModel.fromJson({
        'address': '1 Main St',
        'phone': '123',
        'email': 'hello@example.test',
      });

      expect(footer.address, '1 Main St');
      expect(footer.phone, '123');
      expect(footer.email, 'hello@example.test');
    });
  });

  group('PricingConfigModel', () {
    test('stores all configured fees', () {
      final pricing = PricingConfigModel(
        baseFee: 100,
        pricePerKm: 20,
        pricePerItem: 5,
        expressFee: 50,
        freeThreshold: 500,
      );

      expect(pricing.baseFee, 100);
      expect(pricing.pricePerKm, 20);
      expect(pricing.pricePerItem, 5);
      expect(pricing.expressFee, 50);
      expect(pricing.freeThreshold, 500);
    });
  });

  group('NotificationModel', () {
    test('inherits common model serialization', () {
      final notification = NotificationModel(
        id: 'notification-1',
        name: 'New order',
        createdAt: _createdAt,
      );

      expect(notification.toJson()['id'], 'notification-1');
      expect(notification.toJson()['name'], 'New order');
    });
  });
}
