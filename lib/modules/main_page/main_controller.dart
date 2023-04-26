import 'package:get/get.dart';
import 'package:mysite/common/configs/app.dart';
import 'package:mysite/data/service/drawer_service.dart';
import 'package:mysite/data/service/theme_service.dart';

class MainController extends GetxController {
  final DrawerService drawerService;
  MainController({
    required this.drawerService,
  });

  @override
  void onInit() async {
    super.onInit();
    App.init(Get.context!);
  }
}
