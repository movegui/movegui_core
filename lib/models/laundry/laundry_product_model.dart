import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/company/company_product_model.dart';

class LaundryProductModel extends CompanyProductModel {
  LaundryProductModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.price,
    required super.supplierId,
    required super.imageUrl,
    required super.category,
    required super.isAvailable,
    required super.currency,
    required super.description,
    required super.establishmentCategory,
    super.establishmentType = EstablishmentType.laundry,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory LaundryProductModel.fromJson(Map<String, dynamic> json) {
    final companyArticle = CompanyProductModel.fromJson(json);
    return LaundryProductModel(
      id: companyArticle.id,
      name: companyArticle.name,
      createdAt: companyArticle.createdAt,
      price: companyArticle.price,
      supplierId: companyArticle.supplierId,
      imageUrl: companyArticle.imageUrl,
      category: companyArticle.category,
      isAvailable: companyArticle.isAvailable,
      currency: companyArticle.currency,
      description: companyArticle.description,
      establishmentCategory: companyArticle.establishmentCategory,
    );
  }
}
