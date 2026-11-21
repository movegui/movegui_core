import 'package:movegui_core/models/establishment/establishment_category_model.dart';
import 'package:movegui_core/viewmodels/view_models.dart';

class EstablishmentCategoryViewModel extends ViewModels<EstablishmentCategoryModel> {
  EstablishmentCategoryViewModel({
    required super.title,
    required super.enabled,
    required super.routeName,
    required super.model,
    super.subtitle,
    super.tooltipText,
    super.subtitleTextStyle,
    super.titleTextStyle,
    super.imageUrl,
  });
}
