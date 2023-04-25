import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/common/configs/configs.dart';
import 'package:mysite/data/service/scroll_service.dart';
import 'package:mysite/data/service/theme_service.dart';
import 'package:mysite/utils/links.dart';
import 'package:mysite/utils/navbar_utils.dart';
import 'package:mysite/utils/url_helper.dart';
import 'package:mysite/widgets/color_chage_btn.dart';
import 'package:mysite/widgets/navbar_logo.dart';
import 'package:sizer/sizer.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeService themeService = Get.find();
    final ScrollService scrollService = Get.find();
    // theme
    var theme = Theme.of(context);
    return Drawer(
      child: Obx(
        () {
          bool isDarkTheme = themeService.isDarkThemeOn.value;
          return Material(
            color: theme.scaffoldBackgroundColor,
            child: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: NavBarLogo()),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                      isDarkTheme ? Icons.dark_mode_outlined : Icons.light_mode,
                      // color: theme.textColor,
                    ),
                    title: Text(isDarkTheme ? "Light Mode" : "Dark Mode"),
                    trailing: Switch(
                      value: isDarkTheme,
                      activeColor: theme.primaryColor,
                      inactiveTrackColor: Colors.grey,
                      onChanged: (newValue) {
                        themeService.updateTheme(newValue);
                      },
                    ),
                  ),
                  const Divider(),
                  ...NavBarUtils.names.asMap().entries.map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            hoverColor: theme.primaryColor.withAlpha(70),
                            onPressed: () {
                              scrollService.jumpTo(e.key);
                              Navigator.pop(context);
                            },
                            child: ListTile(
                              leading: Icon(
                                NavBarUtils.icons[e.key],
                                // color: theme.primaryColor,
                              ),
                              title: Text(
                                e.value,
                                // style: AppText.l1,
                              ),
                            ),
                          ),
                        ),
                      ),
                  Space.y(5.w)!,
                  ColorChageButton(
                    text: 'RESUME',
                    onTap: () => openURL(notionPortfolio),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
