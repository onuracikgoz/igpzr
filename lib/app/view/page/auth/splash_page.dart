import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../bloc/auth_store.dart';
import '../home/home_page.dart';
import 'onboarding_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);
  static const String $PATH = '/';
  @override
  Widget build(BuildContext context) {
    final authStore = context.read<AuthStore>();

    return Scaffold(
      body: Observer(builder: (_) {
        switch (authStore.authState) {
          case AuthState.authanticate:
            return HomePage();
          case AuthState.unauthanticate:
            return OnboardingPage();

          default:
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
        }
        ;
      }),
    );
  }
}
