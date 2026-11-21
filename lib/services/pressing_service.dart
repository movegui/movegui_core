

import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/laundry/laundry_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/services/establishment_service.dart';
import 'package:movegui_core/services/interfaces/i_pressing_services.dart';

class PressingService
    extends EstablishmentService<LaundryModel, LaundryServiceModel>
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

  List<LaundryServiceModel> getServicesByType(
    List<LaundryServiceModel> services,
    LaundryServiceTypeModel? selectedServiceType,
  ) {
    return services
        .where((service) => service.serviceType.id == selectedServiceType?.id)
        .toList();
  }
}
