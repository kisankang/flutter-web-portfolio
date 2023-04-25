import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mysite/utils/services_utils.dart';
import 'package:mysite/widgets/custom_text_heading.dart';
import 'package:mysite/utils/content_text.dart';
import 'package:mysite/common/theme/res/responsive.dart';
import 'package:mysite/common/configs/configs.dart';
import 'package:mysite/widgets/services_card.dart';
import 'package:sizer/sizer.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
