import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/models/adress_model.dart';
import 'package:movegui_core/models/geo_cordinates_model.dart';

final _createdAt = DateTime.utc(2025, 1, 2, 3, 4);

void main() {
  group('GeoCordinatesModel', () {
    test('serializes and restores coordinates', () {
      final original = GeoCordinatesModel(longitude: 12.5, latitude: -4.25);

      final restored = GeoCordinatesModel.fromJson(original.toJson());

      expect(restored.longitude, 12.5);
      expect(restored.latitude, -4.25);
      expect(restored.geoPoint.latitude, -4.25);
      expect(restored.geoPoint.longitude, 12.5);
    });
  });

  group('AdressModel', () {
    test('restores address fields and coordinates from JSON', () {
      final createdAt = Timestamp.fromDate(_createdAt);
      final address = AdressModel.fromJson({
        'id': 'address-1',
        'name': 'Home',
        'createdAt': createdAt,
        'address': '12 Main St',
        'district': 'Centre',
        'minucipality': 'di',
        'adressType': 'home',
        'geoCordinates': {'longitude': 10.0, 'latitude': 20.0},
      });

      expect(address.id, 'address-1');
      expect(address.adressType, AdressType.home);
      expect(address.geoCordinates?.latitude, 20.0);
      expect(
        address.getMapAddress(),
        '12 Main St , Centre, di, Conakry, Guinee',
      );
      expect(address.zoneId, 'home_di_Centre');
    });
  });
}
