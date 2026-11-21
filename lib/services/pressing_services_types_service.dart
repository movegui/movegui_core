
import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/services/types_service.dart';

class PressingServicesTypesService
    extends TypesService<LaundryServiceTypeModel> {
  PressingServicesTypesService({required super.api, required super.fromJson});

  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_PRESSINGS_SERVICES_TYPES;
  }

}
