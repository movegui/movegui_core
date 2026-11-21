import 'package:movegui_core/enum/enum_establishment_type.dart';

enum EstablishmentCategory {
  laundry_etablishment('laundry', 'Establishment', EstablishmentType.laundry),
  other('other', 'Other_Establishment', EstablishmentType.other);

  final EstablishmentType establishmentType;
  final String id;
  final String name;

  const EstablishmentCategory(this.id, this.name, this.establishmentType);

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'establishmentType': establishmentType.toJson(),
  };

  static EstablishmentCategory fromJson(dynamic json) {
    final establishmentType = EstablishmentType.fromJson(
      json['establishmentType'],
    );
    final id = json['id'] ?? '';
    final name = json['name'] ?? '';

    return values.firstWhere(
      (category) =>
          category.establishmentType == establishmentType &&
          category.id == id &&
          category.name == name,
      orElse: () => other,
    );
  }
}
