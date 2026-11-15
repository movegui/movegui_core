

import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/patisserie_model.dart';
import 'package:movegui_core/services/model_service.dart';

class PatisseriesService extends ModelService<PatisserieModel> {
  PatisseriesService({required super.api, required super.fromJson});

  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_PASTRIES;
  }

}
