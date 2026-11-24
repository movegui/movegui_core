import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/catalog_model.dart';
import 'package:movegui_core/models/establishment/establishment_catalog_item_model.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';

abstract class EstablishmentCatalogModel<
  M extends EstablishmentModel,
  I extends EstablishmentCatalogItemModel
>
    extends CatalogModel<I> {
  EstablishmentCatalogModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
    required super.description,
    required this.establishmentCategory,
    required this.establishmentType,
    required super.items
  });

  final EstablishmentCategory establishmentCategory;
  final EstablishmentType establishmentType;

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'establishmentCategory': establishmentCategory.toJson(),
    'establishmentType': establishmentType.toJson(),
  };
}
