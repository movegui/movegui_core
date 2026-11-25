import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/laundry/laundry_model.dart';

final _createdAt = DateTime.utc(2025, 1, 2, 3, 4);

void main() {
  group('pressing_model_test', () {
    test('test pressing model', () {
      final json = {
        'id': 'pressing001',
        'name': 'My_Pressing',
        'createdAt': DateTime.now().toIso8601String(),
        'description': 'pressing description',
        'email': 'pressing@test.com',
        'imageUrl': '/assets/image.png',
        'phone': '0022485695874',
        'weeklyHours': [],
        'establishmentType': {
          'id': 'laundry',
          'nameKey': 'module_pressing_name',
        },
        'address': {
          'id': 'address-1',
          'name': 'Home',
          'createdAt': _createdAt,
          'address': '12 Main St',
          'district': 'Centre',
          'minucipality': 'di',
          'adressType': 'home',
          'geoCordinates': {'longitude': 10.0, 'latitude': 20.0},
        },
        'rating': 1.0,
        'reviewCount': 1,
        'isComplete': false,
        'establishmentCategory': {
          'id': 'laundry',
          'name': 'Etablishment',
          'establishmentType': {
            'id': 'laundry',
            'nameKey': 'module_pressing_name',
          },
        },
        'suppliers': [],
      };

      final pressing = LaundryModel.fromJson(json);
      expect(pressing.name, 'My_Pressing');
    });
  });
}
