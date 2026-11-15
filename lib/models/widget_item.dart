import 'dart:ui';

abstract class WidgetItem {
  final String title;
  final String? subtitle;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final String? imageUrl;

  WidgetItem({
    required this.title,
    this.subtitle,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.imageUrl
  });
}
