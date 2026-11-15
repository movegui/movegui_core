
import 'package:movegui_core/models/model.dart';

abstract class ISeedService<M extends Model> {
  Future<M> generateModel();
}