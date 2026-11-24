import 'package:movegui_core/models/company/company_catalog_model.dart';
import 'package:movegui_core/models/laundry/laundry_catalog_item_model.dart';
import 'package:movegui_core/models/laundry/laundry_model.dart';

class LaundryCatalogModel
    extends CompanyCatalogModel<LaundryModel, LaundryCatalogItemModel> {
  LaundryCatalogModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
    required super.description,
    required super.establishmentCategory,
    required super.establishmentType,
    required super.items,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory LaundryCatalogModel.fromJson(Map<String, dynamic> json) {
    final companyCatalog =
        CompanyCatalogModel<LaundryModel, LaundryCatalogItemModel>.fromJson(
          json,
          catalogItemFronJson: (json) =>
              LaundryCatalogItemModel.fromJson(Map<String, dynamic>.from(json)),
        );

    return LaundryCatalogModel(
      id: companyCatalog.id,
      name: companyCatalog.name,
      createdAt: companyCatalog.createdAt,
      isActive: companyCatalog.isActive,
      description: companyCatalog.description,
      establishmentCategory: companyCatalog.establishmentCategory,
      establishmentType: companyCatalog.establishmentType,
      items: companyCatalog.items,
    );
  }
}
