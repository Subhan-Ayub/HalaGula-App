import 'package:get/route_manager.dart';
import 'package:halagula_app/src/bindings/wellcomeBinding.dart';
import 'package:halagula_app/src/ui/view/splashScreen.dart';
import 'package:halagula_app/src/ui/view/wellcomeScreen.dart';
import 'package:halagula_app/src/utils/routes/appRoutes.dart';

class AppPages{
    static const String INITIAL = Routes.splashscreen;
  static final List<GetPage<dynamic>> routes = [
      GetPage(
        name: Routes.splashscreen,
        page: () => const SplashScreen(),
        transition: Transition.noTransition
        ),

        GetPage(
        name: Routes.wellcomescreen,
        binding: WellcomeBinding(),
        page: () => const WellcomeScreen(),
        transition: Transition.noTransition
        ),
  ];
}