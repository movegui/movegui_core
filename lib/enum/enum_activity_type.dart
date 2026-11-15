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
  );

  final String id;
  final String name;
  final String descriptionKey;
  final String titleKey;
  const ActivityType(this.id, this.name, this.titleKey, this.descriptionKey);
}

enum ActivityCategory { order, establishment, user, delivery, payment, system }

