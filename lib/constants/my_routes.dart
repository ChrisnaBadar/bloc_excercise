import 'package:bloc_practice/pages/home/homepage.dart';
import 'package:bloc_practice/pages/yaumi_settings/yaumi_settings_page.dart';

class MyRoutes {
  final routes = {
    '/': (context) => const Homepage(),
    '/yaumiSettings': (context) => const YaumiSettings()
  };
}
