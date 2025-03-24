import 'package:final_exma/screens/detailpage/detailpage.dart';
import 'package:final_exma/screens/homepage/homepage.dart';
import 'package:final_exma/screens/splashscren/Splashscreen.dart';
import 'package:get/get.dart';

class Routes {
  static const String splesh = '/';
  static const String home = '/homepage';
  static const String detail = '/detail';

  static List<GetPage> page = [
    GetPage(
        name: splesh,
        page: () => const Splashscreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: home,
        page: () => const Homepage(),
        transition: Transition.rightToLeft),
    GetPage(
        name: detail,
        page: () => const Detailpage(),
        transition: Transition.rightToLeft),
  ];
}
