import 'package:mysite/utils/image_helper.dart';

class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: ImageHelper.bibyIntro,
    icons: ImageHelper.flutter,
    titles: 'Biby, Social Networking Service',
    description: 'This is a SNS App by using flutter, click to download it.',
    links:
        'https://apps.apple.com/kr/app/%EB%B0%94%EC%9D%B4%EB%B9%84-%EC%9D%B8%ED%94%8C%EB%A3%A8%EC%96%B8%EC%84%9C%EC%99%80-%EC%86%8C%ED%86%B5/id1600422619?l=en',
  ),
  ProjectUtils(
    banners: ImageHelper.coinGame,
    icons: ImageHelper.flutter,
    titles: 'Crypto mock trading App',
    description:
        'This is a mock trading app for Crypto, click to see more detail.',
    links:
        'https://poised-emu-b8d.notion.site/Crypto-investment-game-5497fc7c8fa846faa7907f2e14bdf1c3',
  ),
  ProjectUtils(
    banners: ImageHelper.japilogue,
    icons: ImageHelper.flutter,
    titles: 'Handwrting SNS',
    description:
        'This is a SNS app only by handwriting, click to see more detail.',
    links:
        'https://poised-emu-b8d.notion.site/Hand-writing-SNS-cadae9f323fa4db9957c63d888313174',
  ),
];
