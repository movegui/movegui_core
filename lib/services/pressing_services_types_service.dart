
import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/pressing/pressing_service_type_model%20copy.dart';
import 'package:movegui_core/services/types_service.dart';

class PressingServicesTypesService
    extends TypesService<PressingServiceTypeModel> {
  PressingServicesTypesService({required super.api, required super.fromJson});

  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_PRESSINGS_SERVICES_TYPES;
  }

}
