import 'package:flutter/material.dart';
import 'package:movegui_core/consts/constants.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/l10n/app_localizations.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/ui/web/tab_item.dart';


import '../services/assets_manager.dart';

class AppConstants {
  static const String imageUrl = 'https://i.ibb.co/JM0KMG0/riz-gras.jpg';
  //  'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';

  static List<String> bannersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];

  static const name = "MoveGui";
  static const Adresse = "Ratoma";
  static const LOGIN_PHONE_MODE = 1;
  static const LONGIN_EMAIL_MODE = 2;
  static const MAX_ADRESSES = 5;

  /*
  static const search = "Rechercher";
  static const LABEL_ADRESS = "Adresse";
  static const LABEL_PHONE = "Telephone";
  static const LABEL_EMAIL = "Email";
  */

  // [url=https://ibb.co/JM0KMG0][img]https://i.ibb.co/JM0KMG0/riz-gras.jpg[/img][/url]

  static List<String> daysOfWeek = [
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samdei",
    "Dimanche",
  ];

  static const int COMMAND_CATEGORY = 0;
  static const int COURSES_CATEGORY = 1;
  static const int CATEGORY_RESTAURANT = 2;
  static const int CATEGORY_PATISSERIE = 3;
  static const int CATEGORY_SUPERMARKT = 4;
  static const int CATEGORY_SUPPLIER = 5;
  static const int CATEGORY_PRESSING = 6;

  static List<TabItem> menuTabs(AppLocalizations localizations) => [
    TabItem(
      title: localizations.category_discovery_name,
      icon: Icons.explore,
      routeName: '/home',
      enabled: true,
    ),
    TabItem(
      title: localizations.category_pressing_name,
      icon: Icons.cleaning_services,
      routeName: '/pressing',
      enabled: true,
    ),
    TabItem(
      title: localizations.category_restaurant_name,
      icon: Icons.restaurant,
      routeName: '/restaurant',
      enabled: false,
    ),
    TabItem(
      title: localizations.category_patisserie_name,
      icon: Icons.store,
      routeName: '/pastry',
      enabled: false,
    ),
  ];

  static List<CategoryItem> allEstablishmentCategories(
    AppLocalizations localizations,
  ) => [
    CategoryItem(
      id: 'laundry',
      createdAt: DateTime.now(),
      name: localizations.category_pressing_name,
      imageUrl: AssetsManager.pressing1Image,
      info: ButtonInfo(
        title: localizations.category_pressing_name,
        enabled: true,
        routeName: '/home/pressing',
        subtitle: localizations.pressing_subtitle,
      ),
      establishmentType: EstablishmentType.laundry,
      icon: Icons.checkroom_outlined,
      isActive: true,
    ),
    CategoryItem(
      id: 'restaurant',
      createdAt: DateTime.now(),
      name: localizations.category_restaurant_name,
      imageUrl: AssetsManager.resto1Image,
      info: ButtonInfo(
        title: localizations.category_restaurant_name,
        enabled: false,
        routeName: '/home/restaurant',
      ),
      establishmentType: EstablishmentType.restaurant,
      icon: Icons.restaurant,
      isActive: false,
    ),
    CategoryItem(
      id: 'pastry',
      createdAt: DateTime.now(),
      name: localizations.category_patisserie_name,
      imageUrl: AssetsManager.pastry,
      info: ButtonInfo(
        title: localizations.category_patisserie_name,
        enabled: false,
        routeName: '/home/pastry',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.cake_outlined,
      isActive: false,
    ),

    CategoryItem(
      id: 'supermarket',
      createdAt: DateTime.now(),
      name: localizations.category_supermarche_name,
      imageUrl: AssetsManager.super_market,
      info: ButtonInfo(
        title: localizations.category_supermarche_name,
        enabled: false,
        routeName: '/home/super_markt',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.shopping_cart_outlined,
      isActive: false,
    ),
    CategoryItem(
      id: 'pharmacy',
      createdAt: DateTime.now(),
      name: localizations.category_pharmacy_name,
      imageUrl: AssetsManager.pharmacy,
      info: ButtonInfo(
        title: localizations.category_pharmacy_name,
        enabled: false,
        routeName: '/home/pharmacy',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.local_pharmacy,
      isActive: false,
    ),
    CategoryItem(
      id: 'beauty',
      createdAt: DateTime.now(),
      name: localizations.category_beauty_name,
      imageUrl: AssetsManager.beauty,
      info: ButtonInfo(
        title: localizations.category_beauty_name,
        enabled: false,
        routeName: '/home/beauty',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.spa_outlined,
      isActive: false,
    ),
    CategoryItem(
      id: 'store',
      createdAt: DateTime.now(),
      name: localizations.categroy_store_name,
      imageUrl: AssetsManager.store,
      info: ButtonInfo(
        title: localizations.categroy_store_name,
        enabled: false,
        routeName: '/home/store',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.store,
      isActive: false,
    ),
    CategoryItem(
      id: 'shop',
      createdAt: DateTime.now(),
      name: localizations.category_shop_name,
      imageUrl: AssetsManager.shop,
      info: ButtonInfo(
        title: localizations.category_shop_name,
        enabled: false,
        routeName: '/home/shop',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.shop,
      isActive: false,
    ),
    CategoryItem(
      id: 'wholwsaler',
      createdAt: DateTime.now(),
      name: localizations.category_wholesaler_name,
      imageUrl: AssetsManager.wholesaler,
      info: ButtonInfo(
        title: localizations.category_shop_name,
        enabled: false,
        routeName: '/home/wholesaler',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.warehouse,
      isActive: false,
    ),
    CategoryItem(
      id: 'professions',
      createdAt: DateTime.now(),
      name: localizations.category_profession_name,
      imageUrl: AssetsManager.Profession,
      info: ButtonInfo(
        title: localizations.category_profession_name,
        enabled: false,
        routeName: '/home/profession',
      ),
      establishmentType: EstablishmentType.other,
      icon: Icons.work,
      isActive: false,
    ),

    /*
    CategoryItem(
      id: 'fast_food',
      createdAt: DateTime.now(),
      name: localizations.category_fast_food_name,
      imageUrl: AssetsManager.fast_food,
                    info: ButtonInfo(title: localizations.category_fast_food_name, enabled: false, routeName: '/home/profession'),
         establishmentType: EstablishmentType.other,
      icon: Icons.fastfood_outlined
    ),
    */
  ];

  static List<CategoryItem> commadCategoriesItems(
    AppLocalizations localizations,
  ) => [
    /*
    CategoryItem(
      id: 'MOUV_002',
      createdAt: DateTime.now(),
      name: localizations.category_restaurant_name,
      imageUrl: AssetsManager.resto1Image,
      routeName: '/command/restaurant',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_003',
      createdAt: DateTime.now(),
      name: localizations.category_patisserie_name,
      imageUrl: AssetsManager.pastry,
      routeName: '/command/pastry',
      enabled: false,
    ),

    CategoryItem(
      id: 'MOUV_0011',
      createdAt: DateTime.now(),
      name: localizations.category_fast_food_name,
      imageUrl: AssetsManager.fast_food,
      routeName: '/command/fast_food',
      enabled: false,
    ),
        CategoryItem(
      id: 'MOUV_0011',
      createdAt: DateTime.now(),
      name: localizations.category_fast_food_name,
      imageUrl: AssetsManager.fast_food,
      routeName: '/command/fast_food',
      enabled: false,
    ),
    */
  ];

  static List<CategoryItem> deliveryCategoriesItems(
    AppLocalizations localizations,
  ) => [
    /*
    CategoryItem(
      id: 'MOUV_002',
      createdAt: DateTime.now(),
      name: localizations.category_restaurant_name,
      imageUrl: AssetsManager.resto1Image,
      routeName: '/delivery/restaurant',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_003',
      createdAt: DateTime.now(),
      name: localizations.category_patisserie_name,
      imageUrl: AssetsManager.pastry,
      routeName: '/delivery/pastry',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_0011',
      createdAt: DateTime.now(),
      name: localizations.category_fast_food_name,
      imageUrl: AssetsManager.fast_food,
      routeName: '/delivery/fast_food',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_005',
      createdAt: DateTime.now(),
      name: localizations.category_pharmacy_name,
      imageUrl: AssetsManager.pharmacy,
      routeName: '/delivery/pharmacy',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_006',
      createdAt: DateTime.now(),
      name: localizations.category_beauty_name,
      imageUrl: AssetsManager.beauty,
      routeName: '/delivery/beauty',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_007',
      createdAt: DateTime.now(),
      name: localizations.categroy_store_name,
      imageUrl: AssetsManager.store,
      routeName: '/delivery/store',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_008',
      createdAt: DateTime.now(),
      name: localizations.category_shop_name,
      imageUrl: AssetsManager.shop,
      routeName: '/delivery/shop',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_004',
      createdAt: DateTime.now(),
      name: localizations.category_supermarche_name,
      imageUrl: AssetsManager.super_market,
      routeName: '/delivery/super_market',
      enabled: false,
    ),
    */
  ];

  static List<CategoryItem> coursesCategoriesItems(
    AppLocalizations localizations,
  ) => [
    /*
    CategoryItem(
      id: 'MOUV_001',
      createdAt: DateTime.now(),
      name: localizations.category_pressing_name,
      imageUrl: AssetsManager.pressing1Image,
      routeName: '/courses/pressing',
      enabled: true,
    ),
        CategoryItem(
      id: 'MOUV_005',
      createdAt: DateTime.now(),
      name: localizations.category_pharmacy_name,
      imageUrl: AssetsManager.pharmacy,
      routeName: '/courses/pharmacy',
      enabled: false,
    ),
        CategoryItem(
      id: 'MOUV_006',
      createdAt: DateTime.now(),
      name: localizations.category_beauty_name,
      imageUrl: AssetsManager.beauty,
      routeName: '/courses/beauty',
      enabled: false,
    ),
        CategoryItem(
      id: 'MOUV_007',
      createdAt: DateTime.now(),
      name: localizations.categroy_store_name,
      imageUrl: AssetsManager.store,
      routeName: '/courses/store',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_008',
      createdAt: DateTime.now(),
      name: localizations.category_shop_name,
      imageUrl: AssetsManager.shop,
      routeName: '/courses/shop',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_004',
      createdAt: DateTime.now(),
      name: localizations.category_supermarche_name,
      imageUrl: AssetsManager.super_market,
      routeName: '/courses/super_market',
      enabled: false,
    ),
    CategoryItem(
      id: 'MOUV_0010',
      createdAt: DateTime.now(),
      name: localizations.category_profession_name,
      imageUrl: AssetsManager.Profession,
      routeName: '/courses/profession',
      enabled: false,
    ),
    */
  ];

  
  static Future<List<LaundryServiceTypeModel>> getPressingServicesTypes(
    BuildContext context, {
    AppLocalizations? localizations,
  }
  ) async {
    final strings = localizations ?? AppLocalizations.of(context)!;
    return [
      LaundryServiceTypeModel(
        id: '001',
        name: strings.pressing_service_delicate_fabrics,
        description: strings.pressing_service_delicate_fabrics_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'dry_cleaning',
        colorValue: 'purple',
      ),

      LaundryServiceTypeModel(
        id: '002',
        name: strings.pressing_service_folding,
        description: strings.pressing_service_folding_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'inventory_2',
        colorValue: 'indigo',
      ),

      LaundryServiceTypeModel(
        id: '003',
        name: strings.pressing_service_dry_cleaning,
        description: strings.pressing_service_dry_cleaning_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'local_laundry_service',
        colorValue: 'teal',
      ),

      LaundryServiceTypeModel(
        id: '004',
        name: strings.pressing_service_home_laundry,
        description: strings.pressing_service_home_laundry_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'home',
        colorValue: 'deepPurple',
      ),

      LaundryServiceTypeModel(
        id: '005',
        name: strings.pressing_service_ironing,
        description: strings.pressing_service_ironing_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'iron',
        colorValue: 'orange',
      ),

      LaundryServiceTypeModel(
        id: '006',
        name: strings.pressing_service_laundry,
        description: strings.pressing_service_laundry_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'local_laundry_service',
        colorValue: 'blue',
      ),

      LaundryServiceTypeModel(
        id: '007',
        name: strings.pressing_service_service_express,
        description: strings.pressing_service_service_express_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'bolt',
        colorValue: 'amber',
      ),

      LaundryServiceTypeModel(
        id: '008',
        name: strings.pressing_service_stain_removal,
        description: strings.pressing_service_stain_removal_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'cleaning_services',
        colorValue: 'red',
      ),

      LaundryServiceTypeModel(
        id: '009',
        name: strings.pressing_service_washing,
        description: strings.pressing_service_washing_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        iconName: 'water_drop',
        colorValue: 'cyan',
      ),
    ];
  }

  static String getMunicipality(String value) {
    switch (value) {
      case 'di':
        return COMMUNE_DIXINN;
      case 'gb':
        return COMMUNE_GBESSIA;
      case 'ka':
        return COMMUNE_KALOUM;
      case 'kg':
        return COMMUNE_KAGBELEN;
      case 'ks':
        return COMMUNE_KASSA;
      case 'la':
        return COMMUNE_LAMBANYI;
      case 'ma':
        return COMMUNE_MATAM;
      case 'mn':
        return COMMUNE_MANEAH;
      case 'mt':
        return COMMUNE_MATOTO;
      case 'ra':
        return COMMUNE_RATOMA;
      case 'so':
        return COMMUNE_SONFONIA;
      case 'sn':
        return COMMUNE_SANOYAH;
      case 'to':
        return COMMUNE_TOMBOLIA;
      default:
        return '';
    }
  }

  static String getGender(String value, BuildContext context) {
    switch (value) {
      case 'm':
        return AppLocalizations.of(context)!.gender_masculin;
      case 'f':
        return AppLocalizations.of(context)!.gender_female;
      default:
        return '';
    }
  }
}

abstract class StoreConstants extends ImageConstatnt {
  String getNameLabelText();
  String getNameHinterText();
  String getDescripLabelText();
  String getDescripHinterText();
  String getAdressLabeltext();
  String getAdressHinterText();
  String getEmailLabelText();
  String getEmailHinterText();
  String getPhoneLabelText();
  String getPhoneHinterText();
  String getSaveSuccessText();
  String getTypeStoreText();
  String getMenuTitleText();
  String getTitleName();
  String getCustomerAdressHinterText();
}

abstract class CoursesConstants {
  String getTitleName();
}

class ImageConstatnt {
  String getImageSelectionErrorText() {
    return 'Veuillez choisir une Image svp !!';
  }

  String getImageSelectionText() {
    return 'Une Erreur s\'est produite';
  }
}

class RestaurantConstants extends StoreConstants {
  @override
  String getAdressHinterText() {
    return 'Veuillez saisir l\'adresse du Restaurant';
  }

  @override
  String getAdressLabeltext() {
    return 'Adresse';
  }

  @override
  String getDescripHinterText() {
    return 'Veuillez saisir la description du Restaurant';
  }

  @override
  String getDescripLabelText() {
    return 'Description';
  }

  @override
  String getEmailHinterText() {
    return 'Veuillez saisir l\'email du Restaurant';
  }

  @override
  String getEmailLabelText() {
    return 'Email';
  }

  @override
  String getNameHinterText() {
    return 'Veuillez saisir le nom du Restaurant';
  }

  @override
  String getNameLabelText() {
    return 'Nom du Restaurant';
  }

  @override
  String getPhoneHinterText() {
    return 'Veuillez saisir le téléphone du Restaurant';
  }

  @override
  String getPhoneLabelText() {
    return 'Téléphone';
  }

  @override
  String getSaveSuccessText() {
    return 'Restaurant ajouté avec succes !!!';
  }

  @override
  String getTypeStoreText() {
    return 'Types Restaurants';
  }

  @override
  String getMenuTitleText() {
    return 'Ajouter un Restaurant';
  }

  @override
  String getTitleName() {
    return "Restaurant";
  }

  @override
  String getCustomerAdressHinterText() {
    // TODO: implement getCustomerAdressHinterText
    throw UnimplementedError();
  }
}

class ProfessionConstants extends StoreConstants {
  @override
  String getAdressHinterText() {
    return 'Veuillez saisir l\'adresse de la Profession';
  }

  @override
  String getAdressLabeltext() {
    return 'Adresse';
  }

  @override
  String getDescripHinterText() {
    return 'Veuillez saisir la description de la Profession';
  }

  @override
  String getDescripLabelText() {
    return 'Description';
  }

  @override
  String getEmailHinterText() {
    return 'Veuillez saisir l\'email de la Profession';
  }

  @override
  String getEmailLabelText() {
    return 'Email';
  }

  @override
  String getNameHinterText() {
    return 'Veuillez saisir le nom de la Profession';
  }

  @override
  String getNameLabelText() {
    return 'Nom de la Profession';
  }

  @override
  String getPhoneHinterText() {
    return 'Veuillez saisir le téléphone de la Profession';
  }

  @override
  String getPhoneLabelText() {
    return 'Téléphone';
  }

  @override
  String getSaveSuccessText() {
    return 'Profession ajouée avec succes';
  }

  @override
  String getTypeStoreText() {
    return 'Types Professions';
  }

  @override
  String getMenuTitleText() {
    return 'Ajouter une Profession';
  }

  @override
  String getTitleName() {
    return "Profession";
  }

  @override
  String getCustomerAdressHinterText() {
    // TODO: implement getCustomerAdressHinterText
    throw UnimplementedError();
  }
}

class PatisserieConstants extends StoreConstants {
  @override
  String getAdressHinterText() {
    return 'Veuillez saisir l\'adresse de la Patisserie';
  }

  @override
  String getAdressLabeltext() {
    return 'Adresse';
  }

  @override
  String getDescripHinterText() {
    return 'Veuillez saisir la description de la Patisserie';
  }

  @override
  String getDescripLabelText() {
    return 'Description';
  }

  @override
  String getEmailHinterText() {
    return 'Veuillez saisir l\'email de la Patisserie';
  }

  @override
  String getEmailLabelText() {
    return 'Email';
  }

  @override
  String getNameHinterText() {
    return 'Veuillez saisir le nom de la Patisserie';
  }

  @override
  String getNameLabelText() {
    return 'Nom de la Patisserie';
  }

  @override
  String getPhoneHinterText() {
    return 'Veuillez saisir le téléphone de la Patisserie';
  }

  @override
  String getPhoneLabelText() {
    return 'Téléphone';
  }

  @override
  String getSaveSuccessText() {
    return 'Patisserie ajouée avec succes !!';
  }

  @override
  String getTypeStoreText() {
    return 'Types Patisserie';
  }

  @override
  String getMenuTitleText() {
    return 'Ajouter une Patisserie';
  }

  @override
  String getTitleName() {
    return "Patisserie";
  }

  @override
  String getCustomerAdressHinterText() {
    // TODO: implement getCustomerAdressHinterText
    throw UnimplementedError();
  }
}

class PressingConstants extends StoreConstants {
  @override
  String getAdressHinterText() {
    return 'Veuillez saisir l\'adresse du Pressing';
  }

  @override
  String getAdressLabeltext() {
    return 'Adresse';
  }

  @override
  String getDescripHinterText() {
    return 'Veuillez saisir la description du Pressing';
  }

  @override
  String getDescripLabelText() {
    return 'Description';
  }

  @override
  String getEmailHinterText() {
    return 'Veuillez saisir l\'email du Pressing';
  }

  @override
  String getEmailLabelText() {
    return 'Email';
  }

  @override
  String getNameHinterText() {
    return 'Veuillez saisir le nom du Pressing';
  }

  @override
  String getNameLabelText() {
    return 'Nom du Pressing';
  }

  @override
  String getPhoneHinterText() {
    return 'Veuillez saisir le téléphone du Pressing';
  }

  @override
  String getPhoneLabelText() {
    return 'Téléphone';
  }

  @override
  String getSaveSuccessText() {
    return 'Pressing ajouté avec succes !!';
  }

  @override
  String getTypeStoreText() {
    return 'Types Pressing';
  }

  @override
  String getMenuTitleText() {
    return 'Ajouter un Pressing';
  }

  @override
  String getTitleName() {
    return "Pressing";
  }

  @override
  String getCustomerAdressHinterText() {
    return 'Veuillez saisir l\'adresse de livraison';
  }
}

class SuperMarktConstants extends StoreConstants {
  @override
  String getAdressHinterText() {
    return 'Veuillez saisir l\'adresse du Super Marché';
  }

  @override
  String getAdressLabeltext() {
    return 'Adresse';
  }

  @override
  String getDescripHinterText() {
    return 'Veuillez saisir la descriptionde du Super Marché';
  }

  @override
  String getDescripLabelText() {
    return 'Description';
  }

  @override
  String getEmailHinterText() {
    return 'Veuillez saisir l\'email du Super Marché';
  }

  @override
  String getEmailLabelText() {
    return 'Email';
  }

  @override
  String getNameHinterText() {
    return 'Veuillez saisir le nom du Super Marché';
  }

  @override
  String getNameLabelText() {
    return 'Nom du Super Marché';
  }

  @override
  String getPhoneHinterText() {
    return 'Veuillez saisir le téléphone du Super Marché';
  }

  @override
  String getPhoneLabelText() {
    return 'Téléphone';
  }

  @override
  String getSaveSuccessText() {
    return 'Super Marché ajouté avec succes !!';
  }

  @override
  String getTypeStoreText() {
    return 'Types Supers Marches';
  }

  @override
  String getMenuTitleText() {
    return 'Ajouter un Super Marché';
  }

  @override
  String getTitleName() {
    return "Super Marché";
  }

  @override
  String getCustomerAdressHinterText() {
    // TODO: implement getCustomerAdressHinterText
    throw UnimplementedError();
  }
}

class SupplierConstants extends StoreConstants {
  @override
  String getAdressHinterText() {
    return 'Veuillez saisir l\'adresse du Fournisseur';
  }

  @override
  String getAdressLabeltext() {
    return 'Adresse';
  }

  @override
  String getDescripHinterText() {
    return 'Veuillez saisir la descriptionde du Fournisseur';
  }

  @override
  String getDescripLabelText() {
    return 'Description';
  }

  @override
  String getEmailHinterText() {
    return 'Veuillez saisir l\'email du Fournisseur';
  }

  @override
  String getEmailLabelText() {
    return 'Email';
  }

  @override
  String getNameHinterText() {
    return 'Veuillez saisir le nom du Fournisseur';
  }

  @override
  String getNameLabelText() {
    return 'Nom du Fournisseur';
  }

  @override
  String getPhoneHinterText() {
    return 'Veuillez saisir le téléphone du Fournisseur';
  }

  @override
  String getPhoneLabelText() {
    return 'Téléphone';
  }

  @override
  String getSaveSuccessText() {
    return 'Fournisseur ajoutée avec succes !!';
  }

  @override
  String getTypeStoreText() {
    return 'Types Fournisseurs';
  }

  @override
  String getMenuTitleText() {
    return 'Ajouter un Fournisseur';
  }

  @override
  String getTitleName() {
    return "Fournisseur";
  }

  @override
  String getCustomerAdressHinterText() {
    // TODO: implement getCustomerAdressHinterText
    throw UnimplementedError();
  }
}

abstract class CategoriesConstants {
  String getTitle();
  String getLabelText();
  String getHinterText();
  String getNaameValidatorText();
  String getSaveSuccessText();
}

class StoreCategoriesConstants extends CategoriesConstants {
  @override
  String getTitle() {
    return "Ajouter Une Category de Store";
  }

  @override
  String getHinterText() {
    return "Veuillez saisir le nom de la Categorie de Store";
  }

  @override
  String getLabelText() {
    return "Nom de la Categorie de Store";
  }

  @override
  String getNaameValidatorText() {
    return 'Le Nom est Obligatoire';
  }

  @override
  String getSaveSuccessText() {
    return "Novelle Categorie Ajouter avec succes!";
  }
}

class MiniMarktConstants extends CoursesConstants {
  @override
  String getTitleName() {
    return "Marchés";
  }
}

class GazMarktConstants extends CoursesConstants {
  @override
  String getTitleName() {
    return "Gaz";
  }
}

class LoginConstatnts {
  String getLoginTitle() {
    return "Connectez-vous";
  }

  String getRegisterTitle() {
    return "Enregistrez-vous";
  }
}

