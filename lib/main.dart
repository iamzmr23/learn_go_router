import 'package:flutter/material.dart';
import 'package:four_pages_go_router/app.dart';
import 'package:four_pages_go_router/services/pages_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => PagesControllerr()),
  ], child: const App()));
}
