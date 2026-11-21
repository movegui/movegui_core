
import 'package:movegui_core/formController/address_form_controller.dart';
import 'package:movegui_core/formController/form_controller.dart';
import 'package:movegui_core/models/adress_model.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';
import 'package:movegui_core/models/order/order_item_model.dart';
import 'package:movegui_core/models/order/order_model.dart';
import 'package:movegui_core/models/user/user_model.dart';
import 'package:movegui_core/services/form_services/form_service.dart';

abstract class OrderFormController<
  M extends EstablishmentModel,
  U extends UserModel,
  I extends OrderItemModel,
  OM extends OrderModel<I>,
  F extends FormController<M>,
  FS extends FormService<M,F>>
    extends FormController<OM> {
  final OM order;
  final pickupAddressForm = AddressFormController();
  final deliveryAdressForm = AddressFormController();
  AdressModel? selectedPickupAdress;
  AdressModel? selectedDeliveryAdress;

  OrderFormController({required this.order });

  void dispose() {
    pickupAddressForm.dispose();
    deliveryAdressForm.dispose();
    selectedPickupAdress = null;
    selectedDeliveryAdress = null;
  }

  void clear() {
    pickupAddressForm.clear();
    deliveryAdressForm.clear();
  }

}

/*
  Future<List<AddressFormController>> getUserAddresses() async {
    final adressFormService = getIt<AdressFormService>();
    final adresses = order.user.personModel?.addresses;
     addressesForms = await adressFormService.getFormControllers(adresses!);
     
    int size = adresses?.length ?? 0;
    if (size > 0) {
      for (int i = 0; i < size; i++) {
        final adressForm = AddressFormController();
        adressForm.setData(adresses?[i] ?? AdressModel.getDaulftObject());
        if(adresses?[i] != null){
          adressForm.isRegisted = true;
        }
        addressesForms.add(adressForm);
      }
    } else {
      final seedService = getIt<SeedService>();
      if (seedService.api.env is EnvDev) {
        final adressTestData = await seedService.getgeneratedAdress();

        addressesForms.add(AddressFormController());
        addressesForms[0].setData(adressTestData);
      } else {
        addressesForms.add(AddressFormController());
      }
    }
    
  } 

// PressingModel, UserModel, PressingOrderItem

*/
