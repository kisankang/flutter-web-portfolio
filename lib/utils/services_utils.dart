import 'package:mysite/utils/image_helper.dart';

class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: ImageHelper.android,
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter'],
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: ImageHelper.apple,
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter'],
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: ImageHelper.website,
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
    tool: ['Flutter'],
  ),
];
