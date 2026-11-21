import 'package:flutter/material.dart';
import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/formController/pressing_completion.dart';
import 'package:movegui_core/formController/store_form_controller.dart';
import 'package:movegui_core/models/laundry/laundry_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_model.dart';


class PressingFormController extends StoreFormController<LaundryModel> {
     final formKey = GlobalKey<FormState>();
 final List<LaundryServiceModel>? services = [];

        bool get isPressingCompleted => PressingCompletion.isComplete(
        staff: staff,
        services: services,
        weeklyHours: weeklyHours,
        );
  EstablishmentCategory establishmentCategory =
      EstablishmentCategory.laundry_etablishment;
  

  @override
  Future<void> setData(LaundryModel model) async {
    await super.setData(model);
  }


  @override
  bool isValid() {
    final currentState = formKey.currentState;
    if (currentState == null) {
      return false;
    }

    if (!currentState.validate()) {
      return false;
    }

    return name.text.isNotEmpty &&
        phone.text.isNotEmpty &&
        email.text.isNotEmpty &&
        description.text.isNotEmpty &&
        services!.isNotEmpty;

  }
}
