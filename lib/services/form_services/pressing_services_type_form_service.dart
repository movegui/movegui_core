
import 'package:movegui_core/formController/pressing_service_type_form_controller.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/services/form_services/form_service.dart';
import 'package:uuid/uuid.dart';

class PressingServicesTypeFormService
    extends
        FormService<
          LaundryServiceTypeModel,
          PressingServiceTypeFormController
        > {
  PressingServicesTypeFormService({
    required super.seedService,
    required super.controllerFactory,
    required super.api,
  });

  @override
  Future<LaundryServiceTypeModel> generateModel() {
    return seedService.generatePressingTypeModel();
  }

  @override
  LaundryServiceTypeModel getDefaultModel() {
    return LaundryServiceTypeModel(
      id: Uuid().v4(),
      name: 'default',
      description: 'default',
      pricingType: PricingType.fixed,
      createdAt: DateTime.now(),
      isActive: false,
      iconName: null,
      colorValue: null,
    );
  }

  @override
  Future<LaundryServiceTypeModel> getModel(
    PressingServiceTypeFormController controller,
  ) async {
    return LaundryServiceTypeModel(
      id: controller.id ?? Uuid().v4(),
      name: controller.name.text,
      description: controller.description.text,
      pricingType: controller.pricingType ?? PricingType.fixed,
      createdAt: controller.createdAt ?? DateTime.now(),
      isActive: controller.isActive ?? false,
      iconName: controller.iconName,
      colorValue: controller.colorValue,
      servicesCount: controller.servicesCount
    );
  }
}
