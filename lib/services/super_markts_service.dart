

import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/super_markt_model.dart';
import 'package:movegui_core/services/model_service.dart';

class SuperMarktsService extends ModelService<SuperMarktModel> {
  SuperMarktsService({required super.api, required super.fromJson});


  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_SUPER_MARKETS;
  }

}
