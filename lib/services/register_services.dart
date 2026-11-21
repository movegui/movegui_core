import 'package:faker/faker.dart';
import 'package:get_it/get_it.dart';
import 'package:movegui_core/config/env.dart';
import 'package:movegui_core/formController/address_form_controller.dart';
import 'package:movegui_core/formController/person_form_controller.dart';
import 'package:movegui_core/formController/pressing_form_controller.dart';
import 'package:movegui_core/formController/pressing_service_form_controller.dart';
import 'package:movegui_core/formController/pressing_service_type_form_controller.dart';
import 'package:movegui_core/formController/product_form_controller.dart';
import 'package:movegui_core/formController/user_form_controller.dart';
import 'package:movegui_core/models/establishment/establishment_members_model.dart';
import 'package:movegui_core/models/patisserie_model.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';
import 'package:movegui_core/models/laundry/laundry_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/models/professional_model.dart';
import 'package:movegui_core/models/restaurant_model.dart';
import 'package:movegui_core/models/super_markt_model.dart';
import 'package:movegui_core/models/supplier_model.dart';
import 'package:movegui_core/models/user/user_model.dart';
import 'package:movegui_core/services/address_service.dart';
import 'package:movegui_core/services/api_service.dart';
import 'package:movegui_core/services/dashboard_service.dart';
import 'package:movegui_core/services/establishment_members_service.dart';
import 'package:movegui_core/services/form_services/adress_form_service.dart';
import 'package:movegui_core/services/form_services/person_form_service.dart';
import 'package:movegui_core/services/form_services/pressing_article_form_service.dart';
import 'package:movegui_core/services/form_services/pressing_form_service.dart';
import 'package:movegui_core/services/form_services/pressing_services_form_service.dart';
import 'package:movegui_core/services/form_services/pressing_services_type_form_service.dart';
import 'package:movegui_core/services/form_services/user_form_service.dart';
import 'package:movegui_core/services/image_service%20copy.dart';
import 'package:movegui_core/services/patisseries_service.dart';
import 'package:movegui_core/services/pressing_service.dart';
import 'package:movegui_core/services/pressing_services_types_service.dart';
import 'package:movegui_core/services/professionnel_service.dart';
import 'package:movegui_core/services/restaurants_service.dart';
import 'package:movegui_core/services/seed_service.dart';
import 'package:movegui_core/services/super_markts_service.dart';
import 'package:movegui_core/services/suppliers_service.dart';
import 'package:movegui_core/services/user_service.dart';

final getIt = GetIt.instance;

void initServices(Env env) {
  // getIt.registerLazySingleton<CategoriesService>(() => CategoriesService());
  final api = ApiService(env);

  getIt.registerLazySingleton<SuppliersService>(
    () => SuppliersService(api: api, fromJson: SupplierModel.fromJson),
  );

  getIt.registerLazySingleton<RestaurantsService>(
    () => RestaurantsService(api: api, fromJson: RestaurantModel.fromJson),
  );

  getIt.registerLazySingleton<PatisseriesService>(
    () => PatisseriesService(api: api, fromJson: PatisserieModel.fromJson),
  );
  getIt.registerLazySingleton<SuperMarktsService>(
    () => SuperMarktsService(api: api, fromJson: SuperMarktModel.fromJson),
  );
  getIt.registerLazySingleton<EstablishmentMembersService>(
    () => EstablishmentMembersService(
      api: api,
      fromJson: EstablishmentMembersModel.fromJson,
    ),
  );
  getIt.registerLazySingleton<PressingService>(
    () => PressingService(
      api: api,
      fromJson: LaundryModel.fromJson,
      userService: UserService(api: api, fromJson: UserModel.fromJson),
      fromJsonService: LaundryServiceModel.fromJson,
      establishmentMembersService: EstablishmentMembersService(
        fromJson: EstablishmentMembersModel.fromJson,
        api: api,
      ),
    ),
  );
  getIt.registerLazySingleton<ProfessionnelService>(
    () => ProfessionnelService(api: api, fromJson: ProfessionalModel.fromJson),
  );
  getIt.registerLazySingleton<PressingServicesTypesService>(
    () => PressingServicesTypesService(
      api: api,
      fromJson: LaundryServiceTypeModel.fromJson,
    ),
  );
  getIt.registerLazySingleton<UserService>(
    () => UserService(api: api, fromJson: UserModel.fromJson),
  );
  getIt.registerLazySingleton<ImageService>(() => ImageService());
  getIt.registerLazySingleton<AddressService>(() => AddressService(api: api));
  getIt.registerLazySingleton<SeedService>(
    () => SeedService(api: api, faker: Faker()),
  );
  getIt.registerLazySingleton<DashboardService>(
    () => DashboardService(api: api),
  );
  getIt.registerLazySingleton<AdressFormService>(
    () => AdressFormService(
      api: api,
      seedService: getIt<SeedService>(),
      controllerFactory: () {
        return AddressFormController();
      },
    ),
  );
  getIt.registerLazySingleton<PersonFormService>(
    () => PersonFormService(
      api: api,
      adressFormService: getIt<AdressFormService>(),
      seedService: getIt<SeedService>(),
      controllerFactory: () {
        return PersonFormController();
      },
    ),
  );

  getIt.registerLazySingleton<UserFormService>(
    () => UserFormService(
      personFormService: getIt<PersonFormService>(),
      api: api,
      controllerFactory: () {
        return UserFormController();
      },
      seedService: getIt<SeedService>(),
    ),
  );

  getIt.registerLazySingleton<PressingServicesTypeFormService>(
    () => PressingServicesTypeFormService(
      seedService: getIt<SeedService>(),
      controllerFactory: () {
        return PressingServiceTypeFormController();
      },
      api: api,
    ),
  );

  getIt.registerLazySingleton<PressingArticleFormService>(
    () => PressingArticleFormService(
      seedService: getIt<SeedService>(),
      controllerFactory: () {
        return ProductFormController<LaundryProductModel>();
      },
      api: api,
    ),
  );

  getIt.registerLazySingleton<PressingServicesFormService>(
    () => PressingServicesFormService(
      seedService: getIt<SeedService>(),
      controllerFactory: () {
        return PressingServiceFormController();
      },
      api: api,
      servicesTypeFormService: getIt<PressingServicesTypeFormService>(),
      articleFormService: getIt<PressingArticleFormService>(),
    ),
  );

  getIt.registerLazySingleton<PressingFormService>(
    () => PressingFormService(
      api: api,
      userFormService: getIt<UserFormService>(),
      seedService: getIt<SeedService>(),
      controllerFactory: () {
        return PressingFormController();
      },
      servicesFormService: getIt<PressingServicesFormService>(),
    ),
  );

  //
}
