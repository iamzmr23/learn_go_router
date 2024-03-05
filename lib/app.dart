import 'package:flutter/material.dart';
import 'package:four_pages_go_router/router/routers.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Routers.routers,
    );
  }
}
