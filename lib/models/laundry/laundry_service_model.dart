import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/company/company_service_model.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';

class LaundryServiceModel extends CompanyServiceModel<LaundryProductModel> {
  final LaundryServiceTypeModel serviceType;

  LaundryServiceModel({
    required super.id,
    required this.serviceType,
    required super.minPrice,
    required super.maxPrice,
    required super.basePrice,
    super.isActive,
    super.estimatedDuration,
    required super.name,
    required super.createdAt,
    required super.product,
    required super.description,
    super.currency = 'GNF',
    required super.establishmentCategory,
    super.establishmentType = EstablishmentType.laundry,
  });

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'serviceType': serviceType.toJson(),
  };

  factory LaundryServiceModel.fromJson(Map<String, dynamic> json) {
    final companyService = CompanyServiceModel<LaundryProductModel>.fromJson(
      json,
      productFromJson: LaundryProductModel.fromJson,
    );

    return LaundryServiceModel(
      id: companyService.id,
      serviceType: LaundryServiceTypeModel.fromJson(
        requiredJsonMap(json['serviceType'], 'serviceType'),
      ),
      minPrice: companyService.minPrice,
      maxPrice: companyService.maxPrice,
      basePrice: companyService.basePrice,
      name: companyService.name,
      createdAt: companyService.createdAt,
      product: companyService.product,
      description: companyService.description,
      establishmentCategory: companyService.establishmentCategory,
    );
  }
}
