import 'package:flutter_test/flutter_test.dart';
import 'package:movegui_core/enum/enum_user_role.dart';
import 'package:movegui_core/models/person_model.dart';
import 'package:movegui_core/models/user/user_model.dart';

final _createdAt = DateTime.utc(2025, 1, 2, 3, 4);
void main() {
  group('PersonModel', () {
    test('serializes optional addresses and birth date', () {
      final person = PersonModel(
        id: 'person-1',
        name: 'Ada Lovelace',
        createdAt: _createdAt,
        firstName: 'Ada',
        lastName: 'Lovelace',
        profileImageUrl: null,
        email: 'ada@example.test',
        phone: '123',
        gender: 'female',
        birthDate: DateTime.utc(1815, 12, 10),
        addresses: [null],
      );

      expect(person.toJson()['birthDate'], '1815-12-10T00:00:00.000Z');
      expect(person.toJson()['addresses'], isEmpty);
    });
  });

  group('UserModel', () {
    test('restores role and dates from Firestore JSON', () {
      final person = PersonModel(
        id: 'person-1',
        name: 'Ada Lovelace',
        createdAt: _createdAt,
        firstName: 'Ada',
        lastName: 'Lovelace',
        profileImageUrl: null,
        email: 'ada@example.test',
        phone: '123',
        gender: 'female',
        birthDate: DateTime.utc(1815, 12, 10),
        addresses: [],
      );
      final user = UserModel.fromJson({
        'id': 'user-1',
        'name': 'Ada',
        'createdAt': _createdAt.toString(),
        'updatedAt': _createdAt.toString(),
        'username': 'ada',
        'isVerified': true,
        'role': 'Admin',
        'isActive': true,
        'personModel': person.toJson(),
      });

      expect(user.role, UserRole.Admin);
      //   expect(user.createdAt, _createdAt);
      //   expect(user.updatedAt, _createdAt);
      expect(user.isVerified, isTrue);
      expect(user.isActive, isTrue);
      expect(
        user.personModel!.toJson()['birthDate'],
        '1815-12-10T00:00:00.000Z',
      );
    });
  });
}
