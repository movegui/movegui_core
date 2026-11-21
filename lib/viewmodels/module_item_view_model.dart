
import 'package:movegui_core/models/dashboard/module_item.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/viewmodels/view_models.dart';

class ModuleItemViewModel<M extends Model> extends ViewModels<ModuleItem<M>> {
  ModuleItemViewModel({
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
