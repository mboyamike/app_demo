import 'package:app_demo/routing/routing.dart';
import 'package:flutter/material.dart';

final router = AppRouter();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Time Tracker',
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
    );
  }
}
