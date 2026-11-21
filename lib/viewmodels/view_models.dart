import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/widget_info.dart';

abstract class ViewModels<T extends Model> extends WidgetInfo {
  final T model;
  ViewModels({
    required super.title,
    required super.enabled,
    required super.routeName,
    required this.model,
    super.subtitle,
    super.tooltipText,
    super.subtitleTextStyle,
    super.titleTextStyle,
    super.imageUrl,
  });
}
