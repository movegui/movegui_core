import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/adress_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/open_hours_model.dart';

abstract class EstablishmentModel extends Model {
  final String phone, email, imageUrl;
  final AdressModel address;
  final List<OpenHoursModel> weeklyHours;
  EstablishmentType establishmentType;
  double? rating;
  int? reviewCount;
  bool? isComplete;
  EstablishmentCategory establishmentCategory;

  EstablishmentModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required super.isActive,
    required this.email,
    required this.imageUrl,
    required this.phone,
    required this.weeklyHours,
    required this.establishmentType,
    required this.address,
    this.isComplete = false,
    this.rating = 0.0,
    this.reviewCount = 0,
    required this.establishmentCategory,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'description': description,
    'email': email,
    'imageUrl': imageUrl,
    'phone': phone,
    'weeklyHours': weeklyHours.map((weekHour) {
      return (weekHour.closeTime != null && weekHour.openTime != null)
          ? weekHour.toJson()
          : {};
    }).toList(),
    'establishmentType': establishmentType.toJson(),
    'address': address.toJson(),
    'rating': rating,
    'reviewCount': reviewCount,
    'isComplete': isComplete,
    'establishmentCategory': establishmentCategory.toJson(),
  };
}
