import 'package:movegui_core/models/company/company_order_model.dart';
import 'package:movegui_core/models/laundry/laundry_catalog_item_model.dart';
import 'package:movegui_core/models/laundry/laundry_model.dart';
import 'package:movegui_core/models/laundry/laundry_order_item.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';


class LaundryOrderModel
    extends CompanyOrderModel<LaundryModel, LaundryProductModel, LaundryCatalogItemModel, LaundryOrderItem> {
  LaundryOrderModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.customerId,
    required super.total,
    required super.items,
    required super.storeId,
    required super.deliveryDate,
    required super.pickupDate,
    required super.pickupAdress,
    required super.deliveryAdress,
    required super.status,
    required super.currency,
    required super.orderId,
    required super.establishmentType,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory LaundryOrderModel.fromJson(
    Map<String, dynamic> json,
  ) {
    final companyOrder = CompanyOrderModel<
      LaundryModel,
      LaundryProductModel,
      LaundryCatalogItemModel,
      LaundryOrderItem
    >.fromJson(
      json,
      orderItemFormJson: (itemJson) => LaundryOrderItem.fromJson(
        itemJson,
      ),
    );

    return LaundryOrderModel(
      id: companyOrder.id,
      name: companyOrder.name,
      createdAt: companyOrder.createdAt,
      customerId: companyOrder.customerId,
      total: companyOrder.total,
      items: companyOrder.items,
      storeId: companyOrder.storeId,
      deliveryDate: companyOrder.deliveryDate,
      pickupDate: companyOrder.pickupDate,
      pickupAdress: companyOrder.pickupAdress,
      deliveryAdress: companyOrder.deliveryAdress,
      status: companyOrder.status,
      currency: companyOrder.currency,
      orderId: companyOrder.orderId,
      establishmentType: companyOrder.establishmentType,
    );
  }
}
