import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../config/constant/app_constant.dart';
import '../../../../config/localization/localization.dart';
import '../../widget/button/primary_elevated_button_widget.dart';
import '../../widget/indicator/pageview_dot_indicator_widget.dart';
import 'login_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({
    Key? key,
  }) : super(key: key);
  static const String $PATH = '/OnboardingPage';
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController ctrl = PageController();
  final Duration pageTransitionDuration = const Duration(milliseconds: 400);
  final Curve pageCurve = Curves.easeIn;

  bool isBuild = false;
  int currentIndex = 0;
  final List<Map<String, String>> content = AppConst.onBoardingContent;

  void onPressed() {
    if (currentIndex < content.length - 1) {
      ctrl.nextPage(duration: pageTransitionDuration, curve: pageCurve);
    } else {
      //Navigator.pushNamed(context, LoginPage.$PATH);
    }
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final labels = context.localizations;
    //   final authStore = context.read();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const AlignedText(),
            RotatingCircleAvatar(
                ctrl: ctrl,
                isBuild: isBuild,
                content: content,
                currentIndex: currentIndex),
            Expanded(
              child: PageView.builder(
                controller: ctrl,
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  isBuild = true;
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Text(
                          content[index]['title']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          content[index]['message']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            PageViewDotIndicator(
                dotCount: content.length, currentIndex: currentIndex),
            const SizedBox(height: 36),
            PrimaryElevatedButton(
              onPressed: onPressed,
              title: currentIndex < content.length - 1 ? 'Next' : 'Start',
              color: Colors.amber[700]!,
            ),
          ],
        ),
      ),
    );
  }
}

class RotatingCircleAvatar extends StatelessWidget {
  final PageController ctrl;
  final bool isBuild;
  final List content;
  final int currentIndex;
  const RotatingCircleAvatar({
    Key? key,
    required this.ctrl,
    required this.isBuild,
    required this.content,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ctrl,
      builder: (context, widget) {
        return Transform.rotate(
          angle: isBuild ? math.pi * ctrl.page! * 2.0 : math.pi * 2.0,
          child: CircleAvatar(
            radius: 120,
            backgroundImage: NetworkImage(
              content[currentIndex]['image'],
            ),
          ),
        );
      },
    );
  }
}

class AlignedText extends StatelessWidget {
  const AlignedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 24),
        child: TextButton(
          onPressed: () {
            // Get.toNamed(SignInPage.$PATH);
          },
          child: const Text(
            'Skip',
            style: TextStyle(color: Colors.red),
            textAlign: TextAlign.end,
          ),
        ),
      ),
    );
  }
}
