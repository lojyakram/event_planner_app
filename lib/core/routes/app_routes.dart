
import 'package:event_planner_app/modules/authentication/pages/ForgetPasswordView.dart';
import 'package:event_planner_app/modules/authentication/pages/register_view.dart';
import 'package:event_planner_app/modules/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'page_routes_name.dart';
import 'package:event_planner_app/modules/authentication/pages/login_view.dart';


abstract class AppRoutes{
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name){
      case PageRoutesName.initial:
        return MaterialPageRoute(builder: (BuildContext _) => const SplashView(),
        settings: settings,
        );

       case PageRoutesName.login:
        return MaterialPageRoute(builder: (BuildContext _) => const LoginView(),
          settings: settings,
        );

       case PageRoutesName.register:
       return MaterialPageRoute(builder: (BuildContext _) => const RegisterView(),
       settings: settings,
         );

      case PageRoutesName.forgetpassword:
        return MaterialPageRoute(builder: (BuildContext _) => const Forgetpasswordview(),
          settings: settings,
        );

       default:
        return MaterialPageRoute(builder: (BuildContext _) => const SplashView(),
          settings: settings,
        );
    }
  }
}