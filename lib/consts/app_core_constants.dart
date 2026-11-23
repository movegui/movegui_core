import 'package:flutter/material.dart';
import 'package:movegui_core/consts/constants.dart';
import 'package:movegui_core/l10n/app_localizations.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';
import 'package:movegui_core/ui/web/tab_item.dart';



class AppCoreConstants {
  static const String imageUrl = 'https://i.ibb.co/JM0KMG0/riz-gras.jpg';
  //  'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';



  static const name = "MoveGui";
  static const Adresse = "Ratoma";
  static const LOGIN_PHONE_MODE = 1;
  static const LONGIN_EMAIL_MODE = 2;
  static const MAX_ADRESSES = 5;

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
        /*
        iconName: 'dry_cleaning',
        colorValue: 'purple',
        */
      ),

      LaundryServiceTypeModel(
        id: '002',
        name: strings.pressing_service_folding,
        description: strings.pressing_service_folding_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'inventory_2',
        colorValue: 'indigo',
        */
      ),

      LaundryServiceTypeModel(
        id: '003',
        name: strings.pressing_service_dry_cleaning,
        description: strings.pressing_service_dry_cleaning_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'local_laundry_service',
        colorValue: 'teal',
        */
      ),

      LaundryServiceTypeModel(
        id: '004',
        name: strings.pressing_service_home_laundry,
        description: strings.pressing_service_home_laundry_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'home',
        colorValue: 'deepPurple',
        */
      ),

      LaundryServiceTypeModel(
        id: '005',
        name: strings.pressing_service_ironing,
        description: strings.pressing_service_ironing_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'iron',
        colorValue: 'orange',
        */
      ),

      LaundryServiceTypeModel(
        id: '006',
        name: strings.pressing_service_laundry,
        description: strings.pressing_service_laundry_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'local_laundry_service',
        colorValue: 'blue',
        */
      ),

      LaundryServiceTypeModel(
        id: '007',
        name: strings.pressing_service_service_express,
        description: strings.pressing_service_service_express_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'bolt',
        colorValue: 'amber',
        */
      ),

      LaundryServiceTypeModel(
        id: '008',
        name: strings.pressing_service_stain_removal,
        description: strings.pressing_service_stain_removal_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'cleaning_services',
        colorValue: 'red',
        */
      ),

      LaundryServiceTypeModel(
        id: '009',
        name: strings.pressing_service_washing,
        description: strings.pressing_service_washing_descrip,
        pricingType: PricingType.fixed,
        createdAt: DateTime.now(),
        isActive: true,
        /*
        iconName: 'water_drop',
        colorValue: 'cyan',
        */
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

