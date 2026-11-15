

import 'package:movegui_core/formController/pressing_form_controller.dart';
import 'package:movegui_core/models/pressing/pressing_model.dart';
import 'package:movegui_core/services/form_services/pressing_services_form_service.dart';
import 'package:movegui_core/services/form_services/store_form_service.dart';

class PressingFormService
    extends StoreFormService<PressingModel, PressingFormController> {
  PressingFormService({
    required super.api,
    required super.userFormService,
    required super.seedService,
    required super.controllerFactory,
    required this.servicesFormService
  });
 
 final  PressingServicesFormService servicesFormService;


  @override
  PressingModel getDefaultModel() {
    // TODO: implement getDefaultModel
    throw UnimplementedError();
  }

  @override
  Future<PressingModel> generateModel() {
    return seedService.generatePressing();
  }
  
  @override
  Future<PressingModel> getModel(PressingFormController controller) {
    // TODO: implement getModel
    throw UnimplementedError();
  }
}
