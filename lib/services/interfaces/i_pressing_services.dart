

import 'package:movegui_core/models/laundry/laundry_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_model.dart';

abstract class IPressingServices  {
  Future<List<LaundryServiceModel>> getAllServices(String id);
    Future<LaundryModel> addServices(
    LaundryModel laundry,
    List<LaundryServiceModel>? services,
  );
    Future<void> deleteServices(
    LaundryModel laundry,
    List<LaundryServiceModel>? services,
  );
 }