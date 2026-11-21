
import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/formController/pressing_service_form_controller.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/services/form_services/form_service.dart';
import 'package:movegui_core/services/form_services/pressing_article_form_service.dart';
import 'package:movegui_core/services/form_services/pressing_services_type_form_service.dart';
import 'package:uuid/uuid.dart';

class PressingServicesFormService
    extends FormService<LaundryServiceModel, PressingServiceFormController> {
  PressingServicesFormService({
    required super.seedService,
    required super.controllerFactory,
    required super.api,
    required this.servicesTypeFormService,
    required this.articleFormService,
  });

  final PressingServicesTypeFormService servicesTypeFormService;
  final PressingArticleFormService articleFormService;

  @override
  Future<LaundryServiceModel> generateModel() {
    return seedService.getGeneratedPressingService();
  }

  @override
  LaundryServiceModel getDefaultModel() {
    return LaundryServiceModel(
      id: Uuid().v4(),
      serviceType: LaundryServiceTypeModel(
        id: PricingType.fixed.id,
        name: 'default',
        description: 'default',
        pricingType: PricingType.perItem,
        createdAt: DateTime.now(),
        isActive: false,
        iconName: null,
        colorValue: null,
      ),
      minPrice: 0.0,
      maxPrice: 0.0,
      basePrice: 0.0,
      name: 'default',
      createdAt: DateTime.now(),
      product: LaundryProductModel(
        id: Uuid().v4(),
        name: 'default',
        createdAt: DateTime.now(),
        price: 0.0,
        supplierId: null,
        imageUrl: null,
        category: null,
        isAvailable: false,
        currency: 'GNF',
        description: '',
        establishmentCategory: EstablishmentCategory.laundry_etablishment,
      ),
      description: '',
       establishmentCategory: EstablishmentCategory.laundry_etablishment,
    );
  }

  @override
  Future<LaundryServiceModel> getModel(
    PressingServiceFormController controller,
  ) async {
    return LaundryServiceModel(
      id: controller.id ?? Uuid().v4(),
      serviceType:
          controller.serviceType ??
          await servicesTypeFormService.getModel(
            controller.serviceTypeFormController,
          ),
      minPrice: double.parse(controller.minPrice.text),
      maxPrice: double.parse(controller.maxPrice.text),
      basePrice: controller.basePrice ?? 0.0,
      name:
          '${controller.serviceType?.name}_${controller.articleFormController.name.text}', // controller.name.text,
      createdAt: controller.createdAt ?? DateTime.now(),
      product: await articleFormService.getModel(
        controller.articleFormController,
      ),
      description: controller.description.text,
      estimatedDuration: Duration(
        hours: int.parse(controller.processingTime.text),
      ),
      isActive: controller.active,
      currency: controller.currency, 
      establishmentCategory: EstablishmentCategory.laundry_etablishment,
    );
  }
}
