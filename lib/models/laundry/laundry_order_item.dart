import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';
import 'package:movegui_core/models/company/company_order_item_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_model.dart';


class LaundryOrderItem
    extends CompanyOrderItemModel<LaundryProductModel, LaundryServiceModel> {
  LaundryOrderItem({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.service,
    required super.qty,
    required super.total,
    required super.options,
    super.establishmentType = EstablishmentType.laundry,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory LaundryOrderItem.fromJson(Map<String, dynamic> json) {
    final companyOrderItem = CompanyOrderItemModel.fromJson(
      json,
      serviceFromJson: LaundryServiceModel.fromJson,
    );

    return LaundryOrderItem(
      id: companyOrderItem.id,
      name: companyOrderItem.name,
      createdAt: companyOrderItem.createdAt,
      service: companyOrderItem.service,
      qty: companyOrderItem.qty,
      total: companyOrderItem.total,
      options: companyOrderItem.options,
    );
  }
}
