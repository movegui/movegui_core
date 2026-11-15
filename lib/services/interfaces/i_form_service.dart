

import 'package:movegui_core/formController/form_controller.dart';
import 'package:movegui_core/models/model.dart';

abstract class IFormService<M extends Model, F extends FormController<M>> {
  //  Future<List<UserModel>> getContacts(List<PersonFormController> controllers);
  Future<M> getModel(F controller);
  Future<List<M>> getModels(List<F> controllers);
  Future<F> getFormController(M? model);
  Future<List<F>> getFormControllers(List<M>? models);
  M getDefaultModel();
  Future<M> generateModel();
}
