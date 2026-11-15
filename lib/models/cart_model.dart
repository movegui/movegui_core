

import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/order_item_model.dart';
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

  String get collectionName =>  MoveGuiCollections.COLLECTION_USER_CART;
}
