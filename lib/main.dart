import 'package:flutter/material.dart';
import 'package:event_planner_app/core/routes/app_routes.dart';
import 'package:event_planner_app/core/routes/page_routes_name.dart';
import 'package:event_planner_app/core/theme_manager/app_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeManager.lightTheme,
      darkTheme: AppThemeManager.darkTheme,
      initialRoute: PageRoutesName.initial,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
