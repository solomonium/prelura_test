import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Mock {
  static List<Map<String, dynamic>> navItems() => [
        {"icon": FeatherIcons.server, "label": "Feeds", 'setIndex': 0},
        {"icon": FeatherIcons.search, "label": "Search", 'setIndex': 1},
        {"icon": FeatherIcons.plusCircle, "label": "Add", 'setIndex': 2},
        {"icon": FeatherIcons.home, "label": "Home", 'setIndex': 2},
        {"icon": FeatherIcons.smile, "label": "Profile", 'setIndex': 3},
      ];
}

// import 'package:kooha_test/utils/helpers/in_app_notification.dart';

class MyRoutes {
  final GlobalKey<NavigatorState> navKey = GlobalKey();
  // final GlobalKey<InAppNotificationState> notifyKey = GlobalKey();

  final String baseUrl = 'http://localhost:3000/api';
  final String imageUrl = 'http://localhost:3000/api';

  NavigatorState? get nav => navKey.currentState;
}
