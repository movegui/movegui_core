import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/company/company_catalog_item_model.dart';
import 'package:movegui_core/models/laundry/laundry_product_model.dart';
import 'package:movegui_core/models/laundry/laundry_service_type_model.dart';

class LaundryCatalogItemModel
    extends CompanyCatalogItemModel<LaundryProductModel> {
  final LaundryServiceTypeModel serviceType;

  LaundryCatalogItemModel({
    required super.id,
    required this.serviceType,
    required super.minPrice,
    required super.maxPrice,
    required super.basePrice,
    super.isActive,
    super.estimatedDuration,
    required super.name,
    required super.createdAt,
    required super.productId,
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

  factory LaundryCatalogItemModel.fromJson(Map<String, dynamic> json) {
    final companyCatalogItem =
        CompanyCatalogItemModel<LaundryProductModel>.fromJson(json);

    return LaundryCatalogItemModel(
      id: companyCatalogItem.id,
      serviceType: LaundryServiceTypeModel.fromJson(
        requiredJsonMap(json['serviceType'], 'serviceType'),
      ),
      minPrice: companyCatalogItem.minPrice,
      maxPrice: companyCatalogItem.maxPrice,
      basePrice: companyCatalogItem.basePrice,
      name: companyCatalogItem.name,
      createdAt: companyCatalogItem.createdAt,
      productId: companyCatalogItem.productId,
      description: companyCatalogItem.description,
      establishmentCategory: companyCatalogItem.establishmentCategory,
    );
  }
}
