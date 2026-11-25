import 'package:movegui_core/models/company/company_model.dart';

class LaundryModel extends CompanyModel {
  LaundryModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required super.address,
    required super.email,
    required super.imageUrl,
    required super.phone,
    required super.weeklyHours,
    required super.establishmentType,
    required super.rating,
    required super.reviewCount,
    required super.establishmentCategory,
    super.isComplete,
    super.isActive,
    required super.suppliers,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory LaundryModel.fromJson(Map<String, dynamic> json) {
    final company = CompanyModel.fromJson(json);

    return LaundryModel(
      id: company.id,
      name: company.name,
      createdAt: company.createdAt,
      description: company.description,
      address: company.address,
      email: company.email,
      imageUrl: company.imageUrl,
      phone: company.phone,
      weeklyHours: company.weeklyHours,
      establishmentType: company.establishmentType,
      rating: company.rating,
      reviewCount: company.reviewCount,
      establishmentCategory: company.establishmentCategory,
      isComplete: company.isComplete,
      isActive: company.isActive,
      suppliers: company.suppliers,
    );
  }
}
