import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'my_site.dart';

void main() {
  Get.put(ThemeService(), permanent: true);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MySite());
}
