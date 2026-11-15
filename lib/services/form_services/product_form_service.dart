

import 'package:movegui_core/formController/product_form_controller.dart';
import 'package:movegui_core/models/product_model.dart';
import 'package:movegui_core/services/form_services/form_service.dart';

abstract class ProductFormService<M extends ProductModel>
    extends FormService<M, ProductFormController<M>> {
  ProductFormService({
    required super.seedService,
    required super.controllerFactory,
    required super.api,
  });
}
