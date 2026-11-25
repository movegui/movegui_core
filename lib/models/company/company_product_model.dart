import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/establishment/establishment_product_model.dart';
import 'package:movegui_core/models/model.dart';

class CompanyProductModel extends EstablishmentProductModel {
  CompanyProductModel({
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
    required super.establishmentCategory,
    required super.establishmentType,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory CompanyProductModel.fromJson(Map<String, dynamic> json) =>
      CompanyProductModel(
        id: json['id'],
        name: json['name'],
        imageUrl: json['imageUrl'] ?? '',
        createdAt: json['createdAt'] != null
            ? Model.parseDateTime(json['createdAt'])
            : DateTime.now(),
        supplierId: json['supplierId'],
        category: json['category'] ?? '',
        isAvailable: json['isAvailable'] ?? false,
        price: json['price'] as double? ?? 0.0,
        currency: json['currency'] ?? 'GNF',
        description: json['description'] ?? '',
        establishmentCategory: EstablishmentCategory.fromJson(
          json['establishmentCategory'],
        ),
        establishmentType: EstablishmentType.fromJson(
          json['establishmentType'],
        ),
      );
}
