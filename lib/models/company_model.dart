import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/adress_model.dart';
import 'package:movegui_core/models/establishment/establishment_model.dart';
import 'package:movegui_core/models/open_hours_model.dart';
import 'package:movegui_core/models/supplier_model.dart';

class CompanyModel extends EstablishmentModel {
  final List<SupplierModel> suppliers;
   CompanyModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required super.address,
    required super.email,
    required super.imageUrl,
    required super.phone,
    required super.weeklyHours,
    super.establishmentType = EstablishmentType.other,
    required super.rating,
    required super.reviewCount,
    required super.establishmentCategory,
    required super.isComplete,
    required super.isActive,
    required this.suppliers
  });

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    final addressJson = json['address'];
    if (addressJson is! Map) {
      throw FormatException(
        'Missing or invalid "address" map in pressing "${json['id']}".',
      );
    }

    final rawStoreType = json['establishmentType'];
    final String normalizedStoreTypeId = rawStoreType is Map
        ? (rawStoreType['id'] as String? ?? rawStoreType['name'] as String? ?? 'other')
        : (rawStoreType is String ? rawStoreType : 'other');

    return CompanyModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'] ?? '',
      address: AdressModel.fromJson(Map<String, dynamic>.from(addressJson)),
      email: json['email'] ?? '',
      phone: json['telephon'] ?? '',
      createdAt: json['createdAt'] != null
          ? json['createdAt'].toDate()
          : DateTime.now(),
      weeklyHours: (json['weeklyHours'] as List? ?? [])
          .map((e) => OpenHoursModel.fromJson(e))
          .toList(),
      establishmentType: EstablishmentType.values.firstWhere(
          (store) => store.id == normalizedStoreTypeId || store.name == normalizedStoreTypeId,
          orElse: () => EstablishmentType.other,
        ),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: json['reviewCount'] as int? ?? 0,
      isComplete: json['isComplete'] is bool
          ? json['isComplete'] as bool
          : false,
      isActive: json['isActive'] is bool ? json['isActive'] as bool : false,
      establishmentCategory: EstablishmentCategory.fromJson(json['establishmentCategory']), 
      suppliers: (json['suppliers'] as List).map((elem) => SupplierModel.fromJson(elem)).toList(),
    );
  }
}
