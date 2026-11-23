

import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/adress_model.dart';
import 'package:movegui_core/models/model.dart';

class EstablishmentDiscoveryModel extends Model {
  final EstablishmentType establishmentType;
  final AdressModel address;
  final String? imageUrl;
  final double rating;

  EstablishmentDiscoveryModel({
    required super.id,
    required this.establishmentType,
    required super.name,
    required this.address,
    required this.rating,
    required super.isActive,
    required super.createdAt,
    this.imageUrl,
    super.description,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'description': description,
    'imageUrl': imageUrl,
    'storeType': establishmentType.toJson(),
    'address': address.toJson(),
    'rating': rating,
  };

  factory EstablishmentDiscoveryModel.fromJson(Map<String, dynamic> json) {
    final addressJson = json['address'];
    if (addressJson is! Map) {
      throw FormatException(
        'Missing or invalid "address" map in pressing "${json['id']}".',
      );
    }

    return EstablishmentDiscoveryModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'] ?? '',
      address: AdressModel.fromJson(Map<String, dynamic>.from(addressJson)),
      createdAt:
          json['createdAt'] != null
              ? json['createdAt'].toDate()
              : DateTime.now(),
      establishmentType: EstablishmentType.fromJson(json['establishmentType']),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      isActive: json['isActive'] is bool ? json['isActive'] as bool : false,
    );
  }

  

}
