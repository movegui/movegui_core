import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

class Model extends HiveObject {
  final String id;
  final String name;
  final DateTime createdAt;
  final String? description;
  bool? isActive;

  Model({
    required this.id,
    required this.name,
    required this.createdAt,
    this.description,
    this.isActive,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'createdAt': createdAt,
    'description': description ?? '',
    'isActive': isActive ?? false,
  };

  static DateTime parseDateTime(dynamic value) {
    if (value is Timestamp) {
      return value.toDate();
    }

    if (value is DateTime) {
      return value;
    }

    if (value is String) {
      print('la valeur:  $value');
      return DateTime.parse(value);
    }

    throw FormatException('Invalid date format: $value');
  }
}
