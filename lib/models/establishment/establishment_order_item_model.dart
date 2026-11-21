import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/order/order_item_model.dart';
import 'package:movegui_core/models/product_model.dart';
import 'package:movegui_core/models/service_model.dart';

abstract class EstablishmentOrderItemModel<P extends ProductModel, S extends ServiceModel<P>>
    extends OrderItemModel<S> {
  final EstablishmentType establishmentType;
  EstablishmentOrderItemModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.service,
    required super.qty,
    required super.total,
    required this.establishmentType,
     super.options
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'establishmentType': establishmentType.toJson(),
    
  };
}
