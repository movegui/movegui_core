enum ActivityType {
  establishment_created(
    'establishment_created',
    'created',
    'recent_activity_title',
    'recent_activity_description',
  ),
   establishment_updated(
    'establishment_updated',
    'updated',
    'recent_activity_title',
    'recent_activity_description',
  ),
  other('', '', '', '');

  final String id;
  final String name;
  final String descriptionKey;
  final String titleKey;
  const ActivityType(this.id, this.name, this.titleKey, this.descriptionKey);


  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'descriptionKey': descriptionKey,
    'titleKey': titleKey,
  };


  static ActivityType fromJson(dynamic json) {
    final rawStoreType = json is Map
        ? json['activityType']
        : json;

    final normalizedStoreTypeId = rawStoreType is Map
        ? (rawStoreType['id'] ??
            rawStoreType['name'] ??
            'other').toString()
        : rawStoreType is String
            ? rawStoreType
            : 'other';

    return ActivityType.values.firstWhere(
      (store) =>
          store.id == normalizedStoreTypeId ||
          store.name == normalizedStoreTypeId,
      orElse: () => ActivityType.other,
    );
  }


}

enum ActivityCategory { order, establishment, user, delivery, payment, system }

