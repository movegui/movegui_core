import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/company/company_catalog_item_model.dart';
import 'package:movegui_core/models/company/company_model.dart';
import 'package:movegui_core/models/establishment/establishment_catalog_model.dart';

class CompanyCatalogModel<
  M extends CompanyModel,
  I extends CompanyCatalogItemModel
>
    extends EstablishmentCatalogModel<M, I> {
  CompanyCatalogModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
    required super.description,
    required super.establishmentCategory,
    required super.establishmentType,
    required super.items,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory CompanyCatalogModel.fromJson(
    Map<String, dynamic> json, {
    required I Function(Map<String, dynamic>) catalogItemFronJson,
  }) {
    return CompanyCatalogModel(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isActive: json['isActive'] as bool? ?? true,
      description: json['description'] as String?,
      items: (json['items'] as List? ?? [])
          .map<I>(
            (item) => catalogItemFronJson(Map<String, dynamic>.from(item)),
          )
          .toList(),
      establishmentCategory: EstablishmentCategory.fromJson(
        json['establishmentCategory'],
      ),
      establishmentType: EstablishmentType.fromJson(json['establishmentType']),
    );
  }
}
