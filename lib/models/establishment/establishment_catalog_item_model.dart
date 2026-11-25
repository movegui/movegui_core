import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/establishment/establishment_product_model.dart';
import 'package:movegui_core/models/catalog_item_model.dart';

abstract class EstablishmentCatalogItemModel<
  M extends EstablishmentProductModel
>
    extends CatalogItemModel<M> {
  final EstablishmentCategory establishmentCategory;
  final EstablishmentType establishmentType;
  EstablishmentCatalogItemModel({
    required super.id,
    required super.minPrice,
    required super.maxPrice,
    required super.basePrice,
    super.isActive,
    super.estimatedDuration,
    required super.name,
    required super.createdAt,
    required super.productId,
    required super.description,
    super.currency = 'GNF',
    required this.establishmentCategory,
    required this.establishmentType,
  });

  static String collectionName() {
    return 'services';
  }

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'establishmentCategory': establishmentCategory.toJson(),
    'establishmentType': establishmentType.toJson(),
  };
}
