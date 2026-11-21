import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/establishment/establishment_order_item_model.dart';
import 'package:movegui_core/models/model.dart';
import 'package:movegui_core/models/product_model.dart';
import 'package:movegui_core/models/service_model.dart';

class CompanyOrderItemModel<P extends ProductModel, S extends ServiceModel<P>>
    extends EstablishmentOrderItemModel<P, S> {
  CompanyOrderItemModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.service,
    required super.qty,
    required super.total,
    required super.establishmentType,
    super.options,
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory CompanyOrderItemModel.fromJson(
    Map<String, dynamic> json, {
    required S Function(Map<String, dynamic>) serviceFromJson,
  }) {
    final optionJson = json['options'];
    if (optionJson is! Map) {
      throw FormatException(
        'Missing or invalid "address" map in pressing "${json['id']}".',
      );
    }

    return CompanyOrderItemModel(
      id: json['id'],
      name: json['name'],
      createdAt: json['createdAt'] != null
          ? Model.parseDateTime(json['createdAt'])
          : DateTime.now(),
      service: serviceFromJson(
        Map<String, dynamic>.from(json['service'] as Map),
      ),
      qty: json['qty'] ?? 0.0,
      total: json['total'] ?? 0.0,
      establishmentType: EstablishmentType.fromJson(json['establishmentType']),
    );
  }
}
