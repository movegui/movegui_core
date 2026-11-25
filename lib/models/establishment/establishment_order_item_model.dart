import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/order/order_item_model.dart';
import 'package:movegui_core/models/product_model.dart';
import 'package:movegui_core/models/catalog_item_model.dart';

abstract class EstablishmentOrderItemModel<
  P extends ProductModel,
  S extends CatalogItemModel<P>
>
    extends OrderItemModel<S> {
  final EstablishmentType establishmentType;
  final EstablishmentCategory establishmentCategory;
  EstablishmentOrderItemModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.catalogItem,
    required super.qty,
    required this.establishmentType,
    required this.establishmentCategory,
    super.options,
    required super.unitPrice,
    required super.currency,
    required super.discount,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'establishmentType': establishmentType.toJson(),
    'establishmentCategory': establishmentCategory.toJson(),
  };
}
