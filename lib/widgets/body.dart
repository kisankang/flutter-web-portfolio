import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/data/service/scroll_service.dart';
import 'package:mysite/utils/utils.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScrollService scrollService = Get.find();
    return ScrollablePositionedList.builder(
      padding: EdgeInsets.zero,
      itemCount: BodyUtils.views.length,
      itemBuilder: (context, index) => BodyUtils.views[index],
      itemScrollController: scrollService.itemScrollController,
    );
  }
}
