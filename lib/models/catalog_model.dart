import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/catalog_item_model.dart';

abstract class CatalogModel<T extends CatalogItemModel> extends Model {
  final List<T> items;

  CatalogModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
    required super.description,
    required this.items ,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'items': items.map((item) => item.toJson()).toList(),
      };
}