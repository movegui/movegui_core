import 'package:flutter/material.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/types_model.dart';


class LaundryServiceTypeModel extends TypesModel {
  PricingType? pricingType;
   int? servicesCount;

  LaundryServiceTypeModel({
    required this.pricingType,
    this.servicesCount,
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required super.isActive,
    required super.iconName,
    required super.colorValue,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LaundryServiceTypeModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'pricingType': pricingType?.name ?? '',
    'servicesCount': servicesCount,
  };

  factory LaundryServiceTypeModel.fromJson(Map<String, dynamic> json) =>
      LaundryServiceTypeModel(
        id: json['id'],
        name: json['name'],
        description: json['description'] ?? '',
        pricingType: PricingType.values.firstWhere(
          (e) => e.name == json['pricingType'],
          orElse: () => PricingType.fixed,
        ),
        createdAt: json['createdAt'] != null
            ? Model.parseDateTime(json['createdAt'])
            : DateTime.now(),
        iconName: json['iconName'] ?? json['iconName'] ?? 'dry_cleaning',
        colorValue: json['colorValue'] ?? json['colorValue'] ?? 'disabled',
        servicesCount: json['servicesCount'] ?? 0,
        isActive: json['isActive'] ?? false,
      );

  LaundryServiceTypeModel copyWith({
    String? name,
    String? description,
    IconData? icon,
    Color? color,
    bool? isActive,
    int? servicesCount,
    String? iconName,
    String? colorValue,
    PricingType? pricingType,
  }) {
    return LaundryServiceTypeModel(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      iconName: iconName ?? this.iconName,
      colorValue: colorValue ?? this.colorValue,
      isActive: isActive ?? this.isActive,
      servicesCount: servicesCount ?? this.servicesCount,
      pricingType: pricingType ?? this.pricingType,
      createdAt: DateTime.now(),
    );
  }
}

enum PricingType {
  perItem('001'),
  perKg('002'),
  fixed('003');

  final String id;

  const PricingType(this.id);
}
