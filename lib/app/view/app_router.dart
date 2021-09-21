import 'package:flutter/material.dart';

import 'page/auth/login_page.dart';
import 'page/auth/onboarding_page.dart';

import 'page/auth/splash_page.dart';
import 'page/home/home_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashPage.$PATH:
        return MaterialPageRoute(
          builder: (_) => SplashPage(),
        );
      case OnboardingPage.$PATH:
        return MaterialPageRoute(
          builder: (_) => OnboardingPage(),
        );
      // case LoginPage.$PATH:
      //   return MaterialPageRoute(
      //     builder: (_) => LoginPage(),
      //   );
      // case RegisterPage.$PATH:
      //   return MaterialPageRoute(
      //     builder: (_) => RegisterPage(),
      //   );
      case HomePage.$PATH:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
