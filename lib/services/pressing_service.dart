

import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/pressing/pressing_model.dart';
import 'package:movegui_core/models/pressing/pressing_service_model.dart';
import 'package:movegui_core/models/pressing/pressing_service_type_model.dart';
import 'package:movegui_core/services/establishment_service.dart';
import 'package:movegui_core/services/interfaces/i_pressing_services.dart';

class PressingService
    extends EstablishmentService<PressingModel, PressingServiceModel>
    implements IPressingServices {
  PressingService({
    required super.api,
    required super.fromJson,
    required super.establishmentMembersService,
    required super.userService,
    required super.fromJsonService,
  });

  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_PRESSINGS;
  }

  List<PressingServiceModel> getServicesByType(
    List<PressingServiceModel> services,
    PressingServiceTypeModel? selectedServiceType,
  ) {
    return services
        .where((service) => service.serviceType.id == selectedServiceType?.id)
        .toList();
  }
}
