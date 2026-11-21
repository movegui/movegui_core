import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/establishment/establishment_category_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/product_model.dart';

abstract class EstablishmentProductModel extends ProductModel {
  final EstablishmentCategory establishmentCategory;
  final EstablishmentType establishmentType;
  EstablishmentProductModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.price,
    required super.supplierId,
    required super.imageUrl,
    super.category,
    required super.isAvailable,
    required super.currency,
    required super.description,
    super.materials,
    required this.establishmentCategory,
    required this.establishmentType,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'establishmentCategory': establishmentCategory.toJson(),
    'establishmentType': establishmentType.toJson(),
  };
}
