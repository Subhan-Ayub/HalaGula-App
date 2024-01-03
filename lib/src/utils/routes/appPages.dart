import 'package:get/route_manager.dart';
import 'package:halagula_app/src/ui/view/splashScreen.dart';
import 'package:halagula_app/src/utils/routes/appRoutes.dart';

class AppPages{
    static const String INITIAL = Routes.homeRoute;
  static final List<GetPage<dynamic>> routes = [
      GetPage(
        name: Routes.homeRoute,
        // binding: HomeBindings(),
        page: () => const SplashScreen(),
        // transition: Transition.noTransition
        ),
  ];
}