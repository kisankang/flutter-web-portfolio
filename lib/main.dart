import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'package:mysite/data/service/drawer_service.dart';
import 'package:mysite/data/service/scroll_service.dart';
import 'my_site.dart';

void main() {
  Get.put(ThemeService(), permanent: true);
  Get.put(ScrollService(), permanent: true);
  Get.put(DrawerService(), permanent: true);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MySite());
}
