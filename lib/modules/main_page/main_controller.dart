import 'package:get/get.dart';
import 'package:mysite/common/configs/app.dart';
import 'package:mysite/data/service/drawer_service.dart';
import 'package:mysite/data/service/theme_service.dart';

class MainController extends GetxController {
  final ThemeService themeService;
  final DrawerService drawerService;
  MainController({required this.themeService, required this.drawerService});

  late double height;
  late double width;
  @override
  void onInit() async {
    super.onInit();
    App.init(Get.context!);
    height = Get.size.height;
    width = Get.size.width;
  }
}
