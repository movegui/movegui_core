import 'package:movegui_core/enum/enum_module_type.dart';
import 'package:movegui_core/models/model.dart';

class ModuleItem<T extends Model> extends Model {
  final ModuleType type;
  final T? model;

  ModuleItem({
    required this.type,
    this.model,
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required super.isActive,
  });

  @override
  Map<String, dynamic> toJson({
    Map<String, dynamic> Function(T model)? modelToJson,
  }) {
    return {
      'id': id,
      'name': name,
      'description': description,
      'createdAt': createdAt,
      'isActive': isActive,
      'type': type.name,
      if (model != null && modelToJson != null)
        'model': modelToJson(model as T),
    };
  }

  factory ModuleItem.fromJson(
    Map<String, dynamic> json, {
    T Function(Map<String, dynamic> json)? modelFromJson,
  }) {
    return ModuleItem<T>(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isActive: json['isActive'] as bool? ?? true,

      type: ModuleType.values.firstWhere(
        (type) => type.name == json['type'],
        orElse: () => ModuleType.other,
      ),

      model: json['model'] != null && modelFromJson != null
          ? modelFromJson(Map<String, dynamic>.from(json['model'] as Map))
          : null,
    );
  }
}
