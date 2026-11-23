import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/company/company_model.dart';

void main(){
  group('company test', (){
    test('Company model test', (){

      final json = {
        'id': 'company001',
        'name': 'My_company',
        'createdAt': DateTime.now().toIso8601String(),
        'description': 'pressing description',
        'email': 'pressing@test.com',
        'imageUrl': '/assets/image.png',
        'phone': '0022485695874',
        'weeklyHours': [],
            'establishmentType': {
            'module': 'other',
            'nameKey': 'module_other_name',
          },
        'address': {
          'id': 'address-1',
          'name': 'Home',
          'createdAt': DateTime.now().toIso8601String(),
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
          'id': 'other',
          'name': 'Other_Establishment',
          'establishmentType': {
            'module': 'other',
            'nameKey': 'module_other_name',
          },
        },
        'suppliers': []
      };

      final company = CompanyModel.fromJson(json);
      expect(company.name, 'My_company');
    });
  });
}