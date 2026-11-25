import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/enum/enum_order_status.dart';
import 'package:movegui_core/models/company/company_product_model.dart';
import 'package:movegui_core/models/company/company_catalog_item_model.dart';
import 'package:movegui_core/models/company/company_model.dart';
import 'package:movegui_core/models/establishment/establishment_order_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/company/company_order_item_model.dart';
import 'package:movegui_core/models/adress_model.dart';

class CompanyOrderModel<
  M extends CompanyModel,
  P extends CompanyProductModel,
  S extends CompanyCatalogItemModel<P>,
  I extends CompanyOrderItemModel<P, S>
>
    extends EstablishmentOrderModel<M, I> {
  CompanyOrderModel({
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
    required super.establishmentType,
    required super.status,
    required super.currency,
    required super.orderId,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory CompanyOrderModel.fromJson(
    Map<String, dynamic> json, {
    required I Function(Map<String, dynamic>) orderItemFormJson,
  }) => CompanyOrderModel(
    id: json['id'],
    name: json['name'],
    createdAt: json['createdAt'] != null
        ? Model.parseDateTime(json['createdAt'])
        : DateTime.now(),
    customerId: json['customerId'],
    total: json['total'] ?? 0.0,
    items: (json['items'] as List? ?? [])
        .map((item) => orderItemFormJson(item))
        .toList(),
    storeId: json['storeId'],
    deliveryDate: json['deliveryDate'],
    pickupDate: json['pickupDate'],
    pickupAdress: AdressModel.fromJson(
      Map<String, dynamic>.from(json['pickupAdress']),
    ),
    deliveryAdress: AdressModel.fromJson(
      Map<String, dynamic>.from(json['deliveryAdress']),
    ),
    establishmentType: EstablishmentType.fromJson(json['establishmentType']),
    status: OrderStatus.values.firstWhere(
      (status) => status.name == (json['status'] as String?),
      orElse: () => OrderStatus.pending,
    ),
    currency: json['currency'] ?? 'GNF',
    orderId: json['orderId'],
  );
}
