import 'package:mysite/data/model/contact_data_model.dart';
import 'package:mysite/data/model/project_data_model.dart';
import 'package:mysite/data/model/service_data_model.dart';
import 'package:mysite/utils/image_helper.dart';
import 'package:mysite/utils/links.dart';

List<ContactDataModel> contactUtils = [
  ContactDataModel(
      url: gitHub,
      icon: "https://img.icons8.com/ios-glyphs/60/000000/github.png"),
  ContactDataModel(
      url: whatsapp,
      icon: "https://img.icons8.com/material-outlined/48/000000/whatsapp.png"),
  ContactDataModel(
      url: linkedin,
      icon: "https://img.icons8.com/ios-filled/50/000000/linkedin.png"),
];

List<ProjectDataModel> projectUtils = [
  ProjectDataModel(
    banners: ImageHelper.bibyIntro,
    icons: ImageHelper.flutter,
    titles: 'Biby, Social Networking Service',
    description: 'This is a SNS App by using flutter, click to download it.',
    links:
        'https://apps.apple.com/kr/app/%EB%B0%94%EC%9D%B4%EB%B9%84-%EC%9D%B8%ED%94%8C%EB%A3%A8%EC%96%B8%EC%84%9C%EC%99%80-%EC%86%8C%ED%86%B5/id1600422619?l=en',
  ),
  ProjectDataModel(
    banners: ImageHelper.coinGame,
    icons: ImageHelper.flutter,
    titles: 'Crypto mock trading App',
    description:
        'This is a mock trading app for Crypto, click to see more detail.',
    links:
        'https://poised-emu-b8d.notion.site/Crypto-investment-game-5497fc7c8fa846faa7907f2e14bdf1c3',
  ),
  ProjectDataModel(
    banners: ImageHelper.japilogue,
    icons: ImageHelper.flutter,
    titles: 'Handwrting SNS',
    description:
        'This is a SNS app only by handwriting, click to see more detail.',
    links:
        'https://poised-emu-b8d.notion.site/Hand-writing-SNS-cadae9f323fa4db9957c63d888313174',
  ),
];

List<ServiceDataModel> servicesUtils = [
  ServiceDataModel(
    name: 'Android App Development',
    icon: ImageHelper.android,
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter'],
  ),
  ServiceDataModel(
    name: 'iOS App Development',
    icon: ImageHelper.apple,
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter'],
  ),
  ServiceDataModel(
    name: 'Web Development',
    icon: ImageHelper.website,
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
    tool: ['Flutter'],
  ),
];
