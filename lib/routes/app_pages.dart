import 'package:get/get.dart';
import 'package:mysite/modules/main_page/main_bindings.dart';
import 'package:mysite/modules/main_page/main_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.mainPage,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
  ];
}
