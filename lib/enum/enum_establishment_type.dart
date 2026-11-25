import 'package:movegui_core/consts/movegui_collections.dart';
import 'package:movegui_core/enum/enum_module_type.dart';

enum EstablishmentType {
  laundry(module: ModuleType.laundry, nameKey: 'module_pressing_name'),
  pastry(module: ModuleType.pastry, nameKey: 'module_pastry_name'),
  supplier(module: ModuleType.supplier, nameKey: 'module_supplier_name'),
  professional(
    module: ModuleType.professional,
    nameKey: 'module_professional_name',
  ),
  superMarket(
    module: ModuleType.superMarket,
    nameKey: 'module_super_market_name',
  ),
  delivery(module: ModuleType.delivery, nameKey: 'module_delivery_name'),
  pharmacy(module: ModuleType.pharmacy, nameKey: 'module_pharmacy_name'),
  restaurant(module: ModuleType.restaurant, nameKey: 'module_restaurant_name'),
  other(module: ModuleType.other, nameKey: 'module_other_name');

  final ModuleType module;
  final String nameKey;

  const EstablishmentType({required this.module, required this.nameKey});

  String get collectionName {
    return switch (this) {
      EstablishmentType.laundry => MoveGuiCollections.COLLECTION_PRESSINGS,

      EstablishmentType.restaurant => MoveGuiCollections.COLLECTION_RESTAURANTS,

      EstablishmentType.pastry => MoveGuiCollections.COLLECTION_PASTRIES,

      EstablishmentType.professional =>
        MoveGuiCollections.COLLECTION_PROFESSIONNELS,

      EstablishmentType.superMarket =>
        MoveGuiCollections.COLLECTION_SUPER_MARKETS,

      EstablishmentType.supplier => MoveGuiCollections.COLLECTION_SUPPLIERS,

      EstablishmentType.delivery => MoveGuiCollections.COLLECTION_DELIVERIES,

      EstablishmentType.pharmacy => MoveGuiCollections.COLLECTION_PHARMACIES,

      EstablishmentType.other => '',
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'module': module.name,
      'nameKey': nameKey,
      'collectionName': collectionName,
    };
  }

  static EstablishmentType fromJson(dynamic json) {
    if (json == null) {
      return EstablishmentType.other;
    }

    dynamic rawValue = json;

    if (json is Map) {
      rawValue = json['module'] ?? json['establishmentType'] ?? json['name'];
    }

    if (rawValue is! String) {
      return EstablishmentType.other;
    }

    return EstablishmentType.values.firstWhere(
      (type) => type.module.name == rawValue,
      orElse: () => EstablishmentType.other,
    );
  }
}
