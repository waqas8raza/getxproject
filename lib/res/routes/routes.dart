import 'package:get/get.dart';
import 'package:getxproject/res/routes/rout_name.dart';
import 'package:getxproject/view/splashscreen.dart';

class AppRouts {
  static approuts() => [
        GetPage(
            name: Routnames.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.circularReveal,
            transitionDuration: const Duration(seconds: 2))
      ];
}
