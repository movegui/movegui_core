import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/catalog_item_model.dart';

abstract class OrderItemModel<S extends CatalogItemModel> extends Model {
  final S catalogItem;
  final int qty;
  final double unitPrice;
  final Map<String, dynamic>? options;
  final String currency;
  final double discount;
  final String? note;

  OrderItemModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required this.catalogItem,
    required this.qty,
    required this.unitPrice,
    required this.currency,
    required this.discount,
    this.note,
    this.options,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'catalogItem': catalogItem.toJson(),
    'qty': qty,
    'options': options,
  };

  double get total => qty * (catalogItem.basePrice ?? 0);
}
