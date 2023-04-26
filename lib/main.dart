import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'package:mysite/data/service/drawer_service.dart';
import 'package:mysite/data/service/scroll_service.dart';
import 'package:mysite/routes/app_pages.dart';
import 'package:sizer/sizer.dart';
import 'common/theme/app_theme.dart';

void main() {
  Get.put<ThemeService>(ThemeService(), permanent: true);
  Get.put<ScrollService>(ScrollService(), permanent: true);
  Get.put<DrawerService>(DrawerService(), permanent: true);
  WidgetsFlutterBinding.ensureInitialized();
  var getMaterialApp = Sizer(
    builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kisan',
        themeMode: Get.find<ThemeService>().getThemeMode(),
        theme: AppTheme.lightMode,
        darkTheme: AppTheme.darkMode,
        getPages: AppPages.pages,
        initialRoute: Routes.mainPage,
        initialBinding: BindingsBuilder(() {}),
      );
    },
  );
  runApp(getMaterialApp);
}
