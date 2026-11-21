import 'package:movegui_core/models/dashboard/module_item.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';
import 'package:movegui_core/models/user/user_model.dart';
import 'package:movegui_core/viewmodels/view_models.dart';

abstract class EstablishmentViewModel<M extends EstablishmentModel> extends ViewModels<M> {
  
  final List<ModuleItem> staticsItems;
  final List<UserModel> staff;


  EstablishmentViewModel({
    required super.title,
    required super.enabled,
    required super.routeName,
    required super.model,
    required this.staticsItems,
    required this.staff
  });
}
