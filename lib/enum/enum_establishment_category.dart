import 'package:movegui_core/enum/enum_establishment_type.dart';

enum EstablishmentCategory {
  pressing_etablishment('etablishment', 'Etablishment', EstablishmentType.laundry),
  other('', '', EstablishmentType.other);

  final EstablishmentType establishmentType;
  final String id;
  final String name;

  const EstablishmentCategory(this.id, this.name, this.establishmentType);

  Map<String, dynamic> toJson() => {
    'storeType': establishmentType.toJson(),
  };

  static EstablishmentCategory fromJson(dynamic json) {
    final rawStoreType = json is Map ? json['storeType'] : json;
    final String normalizedStoreTypeId = rawStoreType is Map
        ? (rawStoreType['id'] as String? ??
              rawStoreType['name'] as String? ??
              'other')
        : (rawStoreType is String ? rawStoreType : 'other');

    final establishmentType = EstablishmentType.values.firstWhere(
      (store) =>
          store.id == normalizedStoreTypeId ||
          store.name == normalizedStoreTypeId,
      orElse: () => EstablishmentType.other,
    );

    return values.firstWhere(
      (category) => category.establishmentType == establishmentType,
      orElse: () => other,
    );
  }
}