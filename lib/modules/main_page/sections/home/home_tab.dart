import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/widgets/animation_text.dart';
import 'package:mysite/widgets/color_chage_btn.dart';
import 'package:mysite/utils/image_helper.dart';
import 'package:mysite/utils/links.dart';
import 'package:mysite/utils/content_text.dart';
import 'package:mysite/common/theme/animations/entrance_fader.dart';
import 'package:mysite/common/theme/animations/zoom_animation.dart';
import 'package:mysite/common/configs/configs.dart';
import 'package:mysite/common/theme/res/responsive_size.dart';
import 'package:mysite/utils/url_helper.dart';
import 'package:sizer/sizer.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 60.h,
      child: Stack(
        children: [
          Positioned(
            right: 10.w,
            bottom: 20.w,
            child: const EntranceFader(
              offset: Offset(0, 0),
              delay: Duration(seconds: 1),
              duration: Duration(milliseconds: 800),
              child: ZoomAnimations(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      hellotag,
                      style: AppText.h3!
                          .copyWith(fontSize: isFontSize(context, 18)),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(ImageHelper.hi, height: 10.sp),
                    ),
                  ],
                ),
                Space.y(1.w)!,
                Text(
                  yourname,
                  style: TextStyle(
                    fontSize: isFontSize(context, 38),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "A ",
                        style: TextStyle(
                          fontSize: isFontSize(context, 24),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      AnimatedTextKit(
                        animatedTexts: tabList,
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y(1.5.w)!,
                Padding(
                  padding: EdgeInsets.only(right: 50.w),
                  child: Text(
                    miniDescription,
                    style: TextStyle(
                        fontSize: isFontSize(context, 16),
                        fontWeight: FontWeight.w100,
                        color: theme.textColor.withOpacity(0.6)),
                  ),
                ),
                Space.y(2.w)!,
                ColorChageButton(
                  text: 'check cv',
                  onTap: () => openURL(notionPortfolio),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
