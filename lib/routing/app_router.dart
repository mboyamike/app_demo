import 'package:app_demo/landing/views/screens/landing_screen.dart';
import 'package:auto_route/auto_route.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(path: LandingScreen.path, initial: true, page: LandingScreen),
  ],
)
class $AppRouter {}
