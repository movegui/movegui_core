import 'package:movegui_core/consts/movegui_collections.dart';

enum EstablishmentType {
  laundry(id: 'laundry', nameKey: 'module_pressing_name'),
  pastry(id: 'pastry', nameKey: 'module_pastry_name'),
  supplier(id: 'supplier', nameKey: 'module_supplier_name'),
  professional(id: 'professional', nameKey: 'module_professional_name'),
  superMarket(id: 'superMarket', nameKey: 'module_super_market_name'),

  other(id: 'company', nameKey: 'module_company_name'),

  restaurant(id: 'restaurant', nameKey: 'module_restaurant_name');

  final String id;
  final String nameKey;

  String get collectionName {
    switch (this) {
      case EstablishmentType.laundry:
        return MoveGuiCollections.COLLECTION_PRESSINGS;
      case EstablishmentType.restaurant:
        return MoveGuiCollections.COLLECTION_RESTAURANTS;
      case EstablishmentType.pastry:
        return MoveGuiCollections.COLLECTION_PASTRIES;
      case EstablishmentType.professional:
        return MoveGuiCollections.COLLECTION_PROFESSIONNELS;
      case EstablishmentType.superMarket:
        return MoveGuiCollections.COLLECTION_SUPER_MARKETS;
      case EstablishmentType.supplier:
        return MoveGuiCollections.COLLECTION_SUPPLIERS;
      case EstablishmentType.other:
        return '';
    }
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'nameKey': nameKey,
    'collectionName': collectionName,
  };

  const EstablishmentType({required this.id, required this.nameKey});
}
