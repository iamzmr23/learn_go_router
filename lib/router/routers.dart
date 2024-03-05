import 'package:flutter/material.dart';
import 'package:four_pages_go_router/pages/detail_page.dart';
import 'package:four_pages_go_router/pages/home_page.dart';
import 'package:four_pages_go_router/pages/main_page.dart';
import 'package:four_pages_go_router/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

class Routers {
  static final GoRouter routers = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (BuildContext context, GoRouterState state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'detail',
            name: 'detail',
            builder: (BuildContext context, GoRouterState state) => const DetailPage(),
            routes: [
              GoRoute(
                path: 'profile',
                name: 'profile',
                builder: (BuildContext context, GoRouterState state) => const ProfilePage(),
                routes: [
                  GoRoute(
                    path: 'main',
                    name: 'main',
                    builder: (BuildContext context, GoRouterState state) => const MainPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
