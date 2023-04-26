import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/common/theme/res/responsive.dart';
import 'package:mysite/data/service/drawer_service.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'package:mysite/utils/links.dart';
import 'package:mysite/utils/navbar_utils.dart';
import 'package:mysite/widgets/navbar_actions_button.dart';
import 'package:mysite/widgets/navbar_logo.dart';
import 'package:sizer/sizer.dart';

import '../common/configs/configs.dart';

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    final ThemeService themeService = Get.find();
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
              themeService.changeThemeMode();
            },
            child: Image.network(
              Get.isDarkMode ? IconUrls.lightIcon : IconUrls.darkIcon,
              height: 30,
              width: 30,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          // Space.x!,
        ],
      ),
    );
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
