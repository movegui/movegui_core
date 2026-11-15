

import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/professional_model.dart';
import 'package:movegui_core/services/model_service.dart';

class ProfessionnelService extends ModelService<ProfessionalModel> {
  ProfessionnelService({required super.api, required super.fromJson});

  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_PROFESSIONNELS;
  }

}

