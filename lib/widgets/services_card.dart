import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysite/common/configs/configs.dart';
import 'package:mysite/common/theme/res/responsive.dart';
import 'package:mysite/utils/services_utils.dart';
import 'package:sizer/sizer.dart';

import '../common/theme/colors.dart';

class ServiceCard extends StatefulWidget {
  final ServicesUtils service;

  const ServiceCard({Key? key, required this.service}) : super(key: key);

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        width: Responsive.isTablet(context) ? 400 : 300,
        // height: AppDimensions.normalize(100),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          // gradient: isHover ? pinkpurple : grayBack,
          gradient: isHover ? pinkpurple : theme.serviceCard,
          borderRadius: BorderRadius.circular(15),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.service.icon,
              height: 60,
            ),
            Space.y(3.w)!,
            Text(widget.service.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isHover ? whiteColor : theme.textColor,
                )),
            Space.y(1.w)!,
            Text(
              widget.service.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isHover ? whiteColor.withOpacity(0.8) : theme.textColor,
                fontWeight: FontWeight.w200,
                fontSize: 13,
              ),
            ),
            Space.y(2.w)!,
            if (Responsive.isDesktop(context))
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.service.tool
                      .map((e) => Row(
                            children: [
                              const Text('🛠   '),
                              Text(e,
                                  style: TextStyle(
                                    color:
                                        isHover ? whiteColor : theme.textColor,
                                  )),
                            ],
                          ))
                      .toList()),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              Expanded(
                child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: widget.service.tool
                        .map((e) => Row(
                              children: [
                                const Text('🛠   '),
                                Text(e,
                                    style: TextStyle(
                                      color: isHover
                                          ? whiteColor
                                          : theme.textColor,
                                    )),
                              ],
                            ))
                        .toList()),
              )
          ],
        ),
      ),
    );
  }
}
