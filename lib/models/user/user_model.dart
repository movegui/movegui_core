import 'package:movegui_core/enum/enum_user_role.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/person_model.dart';

class UserModel extends Model {
  final String? username;
  final DateTime? updatedAt;
  final PersonModel? personModel;
  late bool isVerified;
  late UserRole role;
  String? resetLink;

  UserModel({
    required this.updatedAt,
    required super.id,
    required super.name,
    required super.createdAt,
    required this.username,
    this.personModel,
    required this.isVerified,
    required this.role,
    this.resetLink = '',
    required super.isActive,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'username': username,
    'updatedAt': updatedAt,
    'personModel': personModel?.toJson(),
    'isVerified': isVerified,
    'role': role.name,
  };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'] ?? '',
    name: json['name'] ?? '',
    createdAt: Model.parseDateTime(json['createdAt']),
    username: json['username'] ?? '',
    updatedAt: Model.parseDateTime(json['updatedAt']),
    personModel: json['personModel'] != null
        ? PersonModel.fromJson(json['personModel'])
        : null,
    isVerified: json['isVerified'] ?? false,
    role: UserRole.values.firstWhere(
      (e) => e.name == json['role'],
      orElse: () => UserRole.Guest,
    ),
    isActive: json['isActive'] ?? false,
  );
}
