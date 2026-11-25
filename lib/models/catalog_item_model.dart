import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/product_model.dart';

abstract class CatalogItemModel<M extends ProductModel> extends Model {
  final double? minPrice;
  final double? maxPrice;
  final double? basePrice;
  final Duration? estimatedDuration;
  final String? currency;
  final String productId;

  CatalogItemModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
    required this.minPrice,
    required this.maxPrice,
    required this.basePrice,
    required this.estimatedDuration,
    required this.productId,
    required super.description,
    this.currency,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'productId': productId,
    'minPrice': minPrice,
    'maxPrice': maxPrice,
    'basePrice': basePrice,
    'estimatedDuration': estimatedDuration != null
        ? estimatedDuration!.inSeconds
        : 0,
    'currency': currency ?? 'GNF',
  };
}
