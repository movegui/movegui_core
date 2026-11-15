

import 'package:movegui_core/enum/enum_activity_type.dart';
import 'package:movegui_core/enum/enum_establishment_category.dart';
import 'package:movegui_core/enum/enum_establishment_type.dart';
import 'package:movegui_core/models/model.dart';

class RecentActivitiesModel extends Model {
  RecentActivitiesModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.description,
    required this.establishmentType,
    required this.activityType,
    required this.establishmentCategory,
    required this.title,
    required this.establishmentId,
    required this.ownerId,
  });

  final EstablishmentType establishmentType;
  final ActivityType activityType;
  final EstablishmentCategory establishmentCategory;
  final String title;
  final String establishmentId;
  final String ownerId;
}


