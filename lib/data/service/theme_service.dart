import 'package:get/get.dart';

class ThemeService extends GetxService {
  final Rx<bool> isDarkThemeOn = false.obs;

  void updateTheme(bool value) => isDarkThemeOn.value = value;
}
