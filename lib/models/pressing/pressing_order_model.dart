

import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/adress_model.dart';
import 'package:movegui_core/models/establishment/establishment_order_model.dart';
import 'package:movegui_core/models/pressing/pressing_model.dart';
import 'package:movegui_core/models/pressing/pressing_order_item.dart';

class PressingOrderModel
    extends EstablishmentOrderModel<PressingModel, PressingOrderItem> {
  PressingOrderModel({
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

  factory PressingOrderModel.fromJson(
    Map<String, dynamic> json,
  ) => PressingOrderModel(
    items:
        (json['items'] as List? ?? [])
            .map((e) => PressingOrderItem.fromJson(e))
            .toList(),
    pickupDate:
        json['pickupDate'] != null ? DateTime.parse(json['pickupDate']) : null,
    deliveryDate:
        json['deliveryDate'] != null
            ? DateTime.parse(json['deliveryDate'])
            : null,
    total: json['total'],
    id: json['id'],
    name: json['name'],
    createdAt:
        json['createdAt'] != null ? json['createdAt'].toDate() : DateTime.now(),
    pickupAdress: AdressModel.fromJson(json['pickupAdress']),
    deliveryAdress: AdressModel.fromJson(json['deliveryAdress']),
    status: json['status'],
    currency: json['currency'],
    orderId: json['orderId'],
    customerId: json['customerId'],
    storeId: json['storeId'],
    establishmentType: EstablishmentType.values.firstWhere(
      (type) => type.name == (json['establishmentType'] as Map)['name'],
    ),
  );
}
