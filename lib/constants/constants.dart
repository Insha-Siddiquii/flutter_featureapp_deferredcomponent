import 'package:flutter/material.dart';

enum Region {
  all,
  pk,
}

class GlobalConstants {
  static List<Map<String, dynamic>> featuresNames = [
    {
      "name": "Home Feature",
      "icon": Icons.home,
      "rollOutRegion": Region.all,
    },
    {
      "name": "Profile Feature",
      "icon": Icons.person,
      "rollOutRegion": Region.all,
    },
    {
      "name": "Change Email Feature",
      "icon": Icons.email,
      "rollOutRegion": Region.all,
    },
    {
      "name": "Settings Feature",
      "icon": Icons.settings,
      "rollOutRegion": Region.all,
    },
    {
      "name": "Language Feature",
      "icon": Icons.language,
      "rollOutRegion": Region.all,
    },
    {
      "name": "Destination Feature",
      "icon": Icons.science,
      "rollOutRegion": Region.pk,
    }
  ];
}
