import 'package:flutter/material.dart';
import 'package:movegui_core/enum/enum_module_type.dart';

extension ModuleTypeUIExtension on ModuleType {
  IconData get icon {
    return switch (this) {
      ModuleType.laundry => Icons.local_laundry_service_outlined,

      ModuleType.restaurant => Icons.restaurant_outlined,

      ModuleType.pharmacy => Icons.local_pharmacy_outlined,

      ModuleType.pastry => Icons.bakery_dining_outlined,

      ModuleType.superMarket => Icons.shopping_cart_outlined,

      ModuleType.supplier => Icons.inventory_2_outlined,

      ModuleType.professional => Icons.business_center_outlined,

      ModuleType.delivery => Icons.delivery_dining_outlined,

      ModuleType.other => Icons.apps_outlined,
    };
  }

  Color get color {
    return switch (this) {
      ModuleType.laundry => Colors.blue,

      ModuleType.restaurant => Colors.deepOrange,

      ModuleType.pharmacy => Colors.green,

      ModuleType.pastry => Colors.orange,

      ModuleType.superMarket => Colors.indigo,

      ModuleType.supplier => Colors.brown,

      ModuleType.professional => Colors.blueGrey,

      ModuleType.delivery => Colors.teal,

      ModuleType.other => Colors.grey,
    };
  }
}
