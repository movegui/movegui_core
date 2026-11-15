import 'package:movegui_core/models/establishment/establishment_category_item_model.dart';

class CategoryItem extends EstablishmentCategoryItemModel {
  CategoryItem({
    required super.imageUrl,
    required super.info,
    required super.establishmentType,
    super.ontap,
    super.icon,
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
  });
}
