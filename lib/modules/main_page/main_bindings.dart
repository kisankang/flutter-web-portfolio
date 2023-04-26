import 'package:get/get.dart';
import 'package:mysite/modules/main_page/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.create(
      () => MainController(
        drawerService: Get.find(),
      ),
    );
  }
}
