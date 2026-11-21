import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/order/order_item_model.dart';
import 'package:movegui_core/models/user/user_model.dart';

class CartModel<
  S extends EstablishmentModel,
  M extends UserModel,
  T extends OrderItemModel
>
    extends Model {
  final String storeId;
  final String userId;
  final List<T> items;

  CartModel({
    required this.storeId,
    required this.userId,
    required this.items,
    required super.id,
    required super.name,
    required super.createdAt,
  });

  String get collectionName => MoveGuiCollections.COLLECTION_USER_CART;

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'storeId': storeId,
    'userId': userId,
    'items': items.map((elem) => elem.toJson()).toList(),
  };

  factory CartModel.fromJson(
    Map<String, dynamic> json, {
    required T Function(Map<String, dynamic> json) itemFromJson,
  }) => CartModel(
    storeId: json['storeId'] ?? '',
    userId: json['userId'] ?? '',
    items: (json['items'] as List? ?? [])
        .map((item) => itemFromJson(Map<String, dynamic>.from(item)))
        .toList(),
    id: json['id'],
    name: json['name'],
    createdAt: json['createdAt'] != null ? Model.parseDateTime(json['createdAt']) : DateTime.now(),
  );
}
