import 'package:movegui_core/models/widget_item.dart';

class WidgetInfo extends WidgetItem {
  final String? tooltipText;
  final bool enabled;
  final String? routeName;
  WidgetInfo({
    required super.title,
    required this.enabled,
    required this.routeName,
    this.tooltipText,
    super.subtitle,
    super.titleTextStyle,
    super.subtitleTextStyle,
    super.imageUrl,
  });
}
