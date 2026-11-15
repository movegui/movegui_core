import 'package:movegui_core/models/model.dart';

abstract class FormController<T extends Model> {

  Future<void> setData(T model);
  bool isValid();
}