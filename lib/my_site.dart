import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/common/configs/configs.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'package:mysite/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

class MySite extends StatelessWidget {
  const MySite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeService themeService = Get.find();
    return Obx(() {
      bool isDarkTheme = themeService.isDarkThemeOn.value;
      return Sizer(builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Kisan',
          theme: AppTheme.themeData(isDarkTheme, context),
          getPages: AppPages.pages,
          initialRoute: Routes.mainPage,
          initialBinding: BindingsBuilder(() {}),
        );
      });
    });
  }
}
