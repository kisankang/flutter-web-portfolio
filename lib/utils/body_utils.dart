import 'package:flutter/material.dart';
import 'package:mysite/modules/main_page/sections/home/home.dart';
import 'package:mysite/modules/main_page/sections/contact/contact.dart';
import 'package:mysite/modules/main_page/sections/portfolio/portfolio.dart';
import 'package:mysite/modules/main_page/sections/services/services.dart';
import 'package:mysite/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
