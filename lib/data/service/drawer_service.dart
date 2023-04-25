import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerService extends GetxService {
  final scafoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => scafoldKey;
}
