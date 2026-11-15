import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/company_model.dart';

class SupplierModel extends CompanyModel {
  SupplierModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required super.imageUrl,
    required super.address,
    required super.email,
    required super.phone,
    required super.weeklyHours,
    super.establishmentType = EstablishmentType.supplier,
    required super.isActive,
    required super.establishmentCategory,
    required super.rating,
    required super.reviewCount,
    required super.isComplete,
    required super.suppliers,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory SupplierModel.fromJson(Map<String, dynamic> json) =>
      CompanyModel.fromJson(json) as SupplierModel;

  /*
  SupplierModel(
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
          (store) => store.name == (json['establishmentType'] as EstablishmentType).name,
          orElse: () => EstablishmentType.other,
        ),
        isActive: json['isActive'] as bool,
        establishmentCategory: EstablishmentCategoryModel.fromJson(json['establishmentCategory'])
  );
  */
}

/*
class SupplierIngredients extends SupplierModel {
  SupplierIngredients({
    required super.id,
     required super.name, 
     required super.createdAt,
     required super.adresse, 
     required super.telephon,
      required super.email, 
      required super.contact, 
      required super.company,
       required super.type});
  
      factory SupplierIngredients.fromJson(Map<String, dynamic> json) =>
      SupplierIngredients(
        id: json['id'],
        name: json['name'],
        adresse: json['adresse'],
        telephon: json['telephon'],
        email: json['email'],
        contact: json['contact'],
        company: json['company'],
        type: json['type'],
        createdAt: json['createdAt'] != null ? json['createdAt'].toDate() : DateTime.now()
      );

      @override
  Map<String, dynamic> toJson() {
    return super.toJson();
  }
}
*/
