import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/dashboard/recent_activities_model.dart';

final _createdAt = DateTime.utc(2025, 1, 2, 3, 4).toIso8601String();
void main() {
  group('Recent Activities Test', () {
    test('Recent Activities Model', () {
      final json = {
        'id': 'recent-1',
        'name': 'Recent',
        'createdAt': _createdAt,
        'establishmentType': {
          'id': 'laundry',
          'nameKey': 'module_pressing_name',
        },
        'activityType': {
          'id': 'establishment_updated',
          'name': 'updated',
          'descriptionKey': 'recent_activity_title',
          'titleKey': 'recent_activity_description',
        },

        'establishmentCategory': {
          'id': 'laundry',
          'name': 'Etablishment',
          'establishmentType': {
            'id': 'laundry',
            'nameKey': 'module_pressing_name',
          },
        },
        'title': 'Creation Laundry',
        'establishmentId': 'pressing-001',
        'userId': 'user-001',
        'orderId': 'orderId-001'
      };

      final recent = RecentActivitiesModel.fromjson(json);

      expect(recent.name, 'Recent');
      expect(recent.activityType.id, 'establishment_updated');
      expect(recent.establishmentType.module.name, 'laundry');
      expect(recent.userId, 'user-001');
      expect(recent.orderId, 'orderId-001');
    });
  });
}
