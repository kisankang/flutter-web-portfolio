import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/common/theme/animations/entrance_fader.dart';
import 'package:mysite/common/theme/colors.dart';
import 'package:mysite/common/configs/configs.dart';
import 'package:mysite/data/service/scroll_service.dart';

class NavBarActionButton extends StatefulWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final ScrollService scrollService = Get.find();
    // theme
    var theme = Theme.of(context);
    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : null,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: InkWell(
          onHover: (value) {
            setState(() => isHover = value);
          },
          onTap: () {
            scrollService.jumpTo(widget.index);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              widget.label,
              style: TextStyle(color: theme.textColor),
            ),
          ),
        ),
      ),
    );
  }
}
