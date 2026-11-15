import 'dart:ui';

import 'package:movegui_core/models/button_item.dart';

class EstablishmentDiscoveryDisplayModel extends ButtonInfo {
  final String distance;
  final double rating;
  final bool isOpen;
  final VoidCallback onTap;
  EstablishmentDiscoveryDisplayModel({
    required super.title,
    required super.enabled,
    required super.routeName,
    required this.distance,
    required this.rating,
    required this.isOpen,
    required this.onTap,
    super.subtitle,
    super.tooltipText,
    super.subtitleTextStyle,
    super.titleTextStyle,
    super.imageUrl,
  });
}
