import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/formController/product_form_controller.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';
import 'package:movegui_core/services/form_services/product_form_service.dart';
import 'package:uuid/uuid.dart';

class PressingArticleFormService
    extends ProductFormService<LaundryProductModel> {
  PressingArticleFormService({
    required super.seedService,
    required super.controllerFactory,
    required super.api,
  });

  @override
  Future<LaundryProductModel> generateModel() async {
    return seedService.generatePressingArticle();
  }

  @override
  LaundryProductModel getDefaultModel() {
    return LaundryProductModel(
      id: Uuid().v4(),
      name: 'default',
      createdAt: DateTime.now(),
      price: null,
      supplierId: Uuid().v4(),
      imageUrl: 'assets',
      category: 'assets/images/categories/default_image.png',
      isAvailable: true,
      currency: 'GNF',
      description: '',
      establishmentCategory: EstablishmentCategory.laundry_etablishment,
    );
  }

  @override
  Future<LaundryProductModel> getModel(
    ProductFormController<LaundryProductModel> controller,
  ) async {
    return LaundryProductModel(
      id: Uuid().v4(),
      name: controller.name.text,
      createdAt: DateTime.now(),
      price: null,
      supplierId: Uuid().v4(),
      imageUrl: 'assets/images/categories/default_image.png',
      category: '',
      isAvailable: true,
      currency: 'GNF',
      description: '', 
      establishmentCategory: EstablishmentCategory.laundry_etablishment,
    );
  }
}
