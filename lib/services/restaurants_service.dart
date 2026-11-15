

import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/restaurant_model.dart';
import 'package:movegui_core/services/model_service.dart';

class RestaurantsService extends ModelService<RestaurantModel> {
  RestaurantsService({required super.api, required super.fromJson});

  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_RESTAURANTS;
  }

}
