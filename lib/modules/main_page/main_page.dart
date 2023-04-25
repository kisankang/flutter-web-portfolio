
import 'dart:ui';

import 'package:get/get.dart';
import 'package:mysite/utils/image_helper.dart';
import 'package:mysite/widgets/arrow_on_top.dart';
import 'package:mysite/widgets/body.dart';
import 'package:mysite/common/theme/colors.dart';
import 'package:mysite/common/configs/app.dart';
import 'package:mysite/widgets/mobile_drawer.dart';
import 'package:mysite/widgets/navbar_desktop.dart';
import 'package:mysite/common/theme/res/responsive.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'package:mysite/data/service/drawer_service.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final ThemeService themeService = Get.find();
    final DrawerService drawerService = Get.find();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: drawerService.key,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          desktop: NavbarDesktop(),
          mobile: NavBarTablet(),
          tablet: NavBarTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      body: Obx(
        () {
          return Stack(
            children: [
              Positioned(
                top: height * 0.2,
                left: -88,
                child: Container(
                  height: height / 3,
                  width: 166,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -100,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 500,
                      sigmaY: 500,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              if (!themeService.isDarkThemeOn.value)
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageHelper.background,
                    opacity: const AlwaysStoppedAnimation<double>(0.2),
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              Body(),
              const ArrowOnTop()
            ],
          );
        },
      ),
    );
  }
}
