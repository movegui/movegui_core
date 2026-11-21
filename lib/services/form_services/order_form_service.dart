

import 'package:movegui_core/formController/form_controller.dart';
import 'package:movegui_core/formController/order_form_controller.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';
import 'package:movegui_core/models/order/order_item_model.dart';
import 'package:movegui_core/models/order/order_model.dart';
import 'package:movegui_core/models/user/user_model.dart';
import 'package:movegui_core/services/form_services/form_service.dart';

abstract class OrderFormService<  M extends EstablishmentModel,
  U extends UserModel,
  I extends OrderItemModel,
  OM extends OrderModel<I>,
  F extends FormController<M>,
  FS extends FormService<M,F> , O extends OrderFormController<M,U,I,OM,F,FS>>  extends FormService<OM, O> {
  OrderFormService({required super.api, required super.seedService, required super.controllerFactory});


}

