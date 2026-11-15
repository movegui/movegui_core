

import 'package:movegui_core/models/dashboard/module_item.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';
import 'package:movegui_core/models/user/user_model.dart';

class EstablishmentDetailsModel<M extends EstablishmentModel> {
  final List<ModuleItem> staticsItems;
  final M model;
  final List<UserModel> staff;

  EstablishmentDetailsModel({required this.staticsItems, required this.model, required this.staff});

}