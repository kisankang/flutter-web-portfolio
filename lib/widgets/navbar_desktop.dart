import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/common/theme/app_theme.dart';
import 'package:mysite/common/theme/res/responsive.dart';
import 'package:mysite/data/service/drawer_service.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'package:mysite/utils/links.dart';
import 'package:mysite/utils/navbar_utils.dart';
import 'package:mysite/widgets/navbar_actions_button.dart';
import 'package:mysite/widgets/navbar_logo.dart';
import 'package:sizer/sizer.dart';

import '../common/configs/configs.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<NavbarDesktop> createState() => NavbarDesktopState();
}

class NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    final ThemeService themeService = Get.find();
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return Obx(() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
        color: theme.navBarColor,
        child: Row(
          children: [
            const NavBarLogo(),
            Space.xm!,
            ...NavBarUtils.names.asMap().entries.map(
                  (e) => NavBarActionButton(
                    label: e.value,
                    index: e.key,
                  ),
                ),
            // Space.x!,
            InkWell(
                onTap: () {
                  themeService.updateTheme(!themeService.isDarkThemeOn.value);
                },
                child: Image.network(
                  themeService.isDarkThemeOn.value
                      ? IconUrls.darkIcon
                      : IconUrls.lightIcon,
                  height: 30,
                  width: 30,
                  color: themeService.isDarkThemeOn.value
                      ? Colors.black
                      : Colors.white,
                )),
            // Space.x!,
          ],
        ),
      );
    });
  }
}

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DrawerService drawerService = Get.find();
    var theme = Theme.of(context);
    return Container(
      color: theme.navBarColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerService.key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          Space.xm!,
          const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}
