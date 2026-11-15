import 'package:flutter/material.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/button_item.dart';
import 'package:movegui_core/models/model.dart';

class EstablishmentCategoryItemModel extends Model {
  final ButtonInfo info;
  final String imageUrl;
  final EstablishmentType establishmentType;
  final VoidCallback? ontap;
  final IconData? icon;

  EstablishmentCategoryItemModel({
    required this.imageUrl,
    required this.info,
    required this.establishmentType,
    required super.id,
    required super.name,
    required super.createdAt,
    required super.isActive,
    this.ontap,
    this.icon,
  });
}
