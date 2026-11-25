import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';
import 'package:movegui_core/models/company/company_order_item_model.dart';
import 'package:movegui_core/models/laundry/laundry_catalog_item_model.dart';

class LaundryOrderItem
    extends
        CompanyOrderItemModel<LaundryProductModel, LaundryCatalogItemModel> {
  LaundryOrderItem({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.catalogItem,
    required super.qty,
    required super.options,
    super.establishmentType = EstablishmentType.laundry,
    required super.establishmentCategory,
    required super.unitPrice,
    required super.currency,
    required super.discount,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory LaundryOrderItem.fromJson(Map<String, dynamic> json) {
    final companyOrderItem = CompanyOrderItemModel.fromJson(
      json,
      catalogFromJson: LaundryCatalogItemModel.fromJson,
    );

    return LaundryOrderItem(
      id: companyOrderItem.id,
      name: companyOrderItem.name,
      createdAt: companyOrderItem.createdAt,
      catalogItem: companyOrderItem.catalogItem,
      qty: companyOrderItem.qty,
      options: companyOrderItem.options,
      establishmentCategory: companyOrderItem.establishmentCategory,
      unitPrice: companyOrderItem.unitPrice,
      currency: companyOrderItem.currency,
      discount: companyOrderItem.discount,
    );
  }
}
