// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:hive/hive.dart';
import 'package:movegui_core/enum/enum_user_role.dart';
import 'package:movegui_core/models/user/user_model.dart';

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    return UserModel(
      /*
      userName: fields[0] as String,
      password: fields[1] as String,
      pinCode: fields[2] as int, 
      */
      updatedAt: null,
      id: '',
      name: '',
      createdAt: DateTime.now(),
      username: '',
      isVerified: false,
      role: UserRole.Guest,
      isActive: false,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
