import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/model.dart';

class EstablishmentCategoryModel extends Model {
  final EstablishmentType establishmentType;
  final EstablishmentCategory establishmentCategory;

  EstablishmentCategoryModel({
    required this.establishmentType,
    required this.establishmentCategory,
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'establishmentType': establishmentType.toJson(),
    'establishmentCategory': establishmentCategory.toJson(),
  };

  factory EstablishmentCategoryModel.fromJson(Map<String, dynamic> json) =>
      EstablishmentCategoryModel(
        establishmentType: EstablishmentType.fromJson(
          json['establishmentType'],
        ),
        establishmentCategory: EstablishmentCategory.fromJson(
          json['establishmentCategory'],
        ),
        id: json['id'],
        name: json['name'],
        createdAt: json['createdAt'] != null
            ? Model.parseDateTime(json['createdAt'])
            : DateTime.now(),
        isActive: json['isActive'] ?? false,
      );
}
