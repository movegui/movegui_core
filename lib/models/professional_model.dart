import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/company/company_model.dart';

class ProfessionalModel extends CompanyModel {
  ProfessionalModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required super.address,
    required super.email,
    required super.imageUrl,
    required super.phone,
    required super.weeklyHours,
    super.establishmentType = EstablishmentType.professional,
    required super.isActive,
    required super.establishmentCategory,
    required super.rating,
    required super.reviewCount,
    required super.isComplete,
    required super.suppliers,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory ProfessionalModel.fromJson(Map<String, dynamic> json) =>
      CompanyModel.fromJson(json) as ProfessionalModel;

  /*
      ProfessionnelModel(
        id: json['id'],
        name: json['name'],
        createdAt: json['createdAt'] != null
            ? json['createdAt'].toDate()
            : DateTime.now(),
        description: json['description'],
        imageUrl: json['imageUrl'],
        address: AdressModel.fromJson(json['adresse']),
        email: json['email'],
        phone: json['telephon'],
        weeklyHours: (json['weeklyHours'] as List? ?? [])
            .map((e) => OpenHoursModel.fromJson(e))
            .toList(),
        establishmentType: EstablishmentType.values.firstWhere(
          (store) =>
              store.name ==
              (json['establishmentType'] as EstablishmentType).name,
          orElse: () => EstablishmentType.other,
        ),
        category: CategoriesModel.fromJson(json['category']),
        isActive: json['isActive'] as bool,
        establishmentCategory: EstablishmentCategoryModel.fromJson(
          json['establishmentCategory'],
        ),
      );
      */
}
