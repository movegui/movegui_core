import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/establishment/establishment_order_item_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/product_model.dart';
import 'package:movegui_core/models/catalog_item_model.dart';

class CompanyOrderItemModel<
  P extends ProductModel,
  S extends CatalogItemModel<P>
>
    extends EstablishmentOrderItemModel<P, S> {
  CompanyOrderItemModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.catalogItem,
    required super.qty,
    required super.establishmentType,
    required super.establishmentCategory,
    super.options,
    required super.unitPrice,
    required super.currency,
    required super.discount,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory CompanyOrderItemModel.fromJson(
    Map<String, dynamic> json, {
    required S Function(Map<String, dynamic>) catalogFromJson,
  }) {
    final optionJson = json['options'];
    if (optionJson is! Map) {
      throw FormatException(
        'Missing or invalid "address" map in pressing "${json['id']}".',
      );
    }

    return CompanyOrderItemModel(
      id: json['id'],
      name: json['name'],
      createdAt: json['createdAt'] != null
          ? Model.parseDateTime(json['createdAt'])
          : DateTime.now(),
      catalogItem: catalogFromJson(
        Map<String, dynamic>.from(json['catalogItem'] as Map),
      ),
      qty: json['qty'] ?? 0.0,
      establishmentType: EstablishmentType.fromJson(json['establishmentType']),
      establishmentCategory: EstablishmentCategory.fromJson(
        json['establishmentCategory'],
      ),
      unitPrice: json['unitPrice'] ?? 0.0,
      currency: json['currency'] ?? 'GNF',
      discount: json['discount'] ?? 0.0,
    );
  }
}
