
import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/models/supplier_model.dart';
import 'package:movegui_core/services/model_service.dart';

class SuppliersService extends ModelService<SupplierModel> {
  SuppliersService({required super.api, required super.fromJson});

  @override
  String getCollectionName() {
    return MoveGuiCollections.COLLECTION_SUPPLIERS;
  }

}
