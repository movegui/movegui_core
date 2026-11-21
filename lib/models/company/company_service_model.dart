import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/company/company_product_model.dart';
import 'package:movegui_core/models/establishment/establishment_service_model.dart';
import 'package:movegui_core/models/model.dart';

class CompanyServiceModel<P extends CompanyProductModel>
    extends EstablishmentServiceModel<P> {
  CompanyServiceModel({
    required super.id,
    required super.minPrice,
    required super.maxPrice,
    required super.basePrice,
    super.isActive,
    super.estimatedDuration,
    required super.name,
    required super.createdAt,
    required super.product,
    required super.description,
    super.currency = 'GNF',
    required super.establishmentCategory,
    required super.establishmentType,
  });

  static const String collection = 'services';

  static String collectionName() => collection;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'estimatedDurationInMinutes': estimatedDuration?.inMinutes,
      };

  factory CompanyServiceModel.fromJson(
    Map<String, dynamic> json, {
    required P Function(Map<String, dynamic> json) productFromJson,
  }) {
    return CompanyServiceModel<P>(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      createdAt: json['createdAt'] != null
          ? Model.parseDateTime(json['createdAt'])
          : DateTime.now(),
      product: productFromJson(
        requiredJsonMap(json['product'], 'product'),
      ),
      minPrice: _toDouble(json['minPrice']),
      maxPrice: _toDouble(json['maxPrice']),
      basePrice: _toDouble(json['basePrice']),
      estimatedDuration: _parseDuration(json),
      description: json['description'] as String? ?? '',
      currency: json['currency'] as String? ?? 'GNF',
      isActive: json['isActive'] as bool? ?? true,
      establishmentCategory: EstablishmentCategory.fromJson(
        json['establishmentCategory'],
      ),
      establishmentType: EstablishmentType.fromJson(
        json['establishmentType'],
      ),
    );
  }
}

double _toDouble(Object? value) {
  if (value is num) {
    return value.toDouble();
  }

  if (value is String) {
    return double.tryParse(value) ?? 0.0;
  }

  return 0.0;
}

Duration? _parseDuration(Map<String, dynamic> json) {
  final value = json['estimatedDurationInMinutes'];

  if (value == null) {
    return null;
  }

  if (value is num) {
    return Duration(minutes: value.toInt());
  }

  if (value is String) {
    final minutes = int.tryParse(value);

    if (minutes != null) {
      return Duration(minutes: minutes);
    }
  }

  throw const FormatException(
    'Invalid "estimatedDurationInMinutes" value.',
  );
}

Map<String, dynamic> requiredJsonMap(Object? value, String field) {
  if (value is Map<String, dynamic>) {
    return value;
  }

  if (value is Map) {
    return Map<String, dynamic>.from(value);
  }

  throw FormatException(
    'Missing or invalid "$field" map in company service.',
  );
}