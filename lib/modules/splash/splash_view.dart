import 'package:event_planner_app/core/constants/app_assets.dart';
import 'package:event_planner_app/core/routes/page_routes_name.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
   super.initState();
   Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, PageRoutesName.login);
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Image.asset(AppAssets.logoIcn, height: 185,)],
      ),
    );
  }
}
