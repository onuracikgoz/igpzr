import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:igpzr/core/base/base_scaffold.dart';
import 'package:igpzr/init/locator.dart';
import 'package:igpzr/ui/modules/init_page/init_page.dart';
import 'core/localization/localization.dart';
import 'core/theme/theme_data.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => const MainMaterialPage());
  }
}

class MainMaterialPage extends StatefulWidget {
  const MainMaterialPage({Key? key}) : super(key: key);

  @override
  _MainMaterialPageState createState() => _MainMaterialPageState();
}

class _MainMaterialPageState extends State<MainMaterialPage> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      final box = locator<GetStorage>();
      var token =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOiI2MTQ5ZDViYzUxMWI1M2NiZTYxMzZiZjkiLCJmdWxsTmFtZSI6Ik9zbWFuIEVTRVIiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwibmJmIjoxNjMyMjI4ODcwLCJleHAiOjE2MzQ4MjA4NzAsImlzcyI6ImkiLCJhdWQiOiJhIn0.KEv7fTVDFnXMRP0oBpbXRu-Rbb6p1RgdE3eEHuM35ts";

      await box.write("token", token);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: AppConfig.currentLocale,
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: localizedLabels.keys.toList(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getThemeFromThemeMode(),
      home: const InitPage(),
      
    );
    // return StreamBuilder(
    //   stream: fillToken(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState != ConnectionState.done) {
    //       return Container(
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: ExactAssetImage(ImageConstant.instance.splash),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //         child: BackdropFilter(
    //           filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
    //           child: Container(
    //             decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
    //             child: Center(
    //               child: CustomSizeBoxWidget(
    //                 height: 40,
    //                 child: CircularProgressIndicator(
    //                     color: AppConfig.customYellow),
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return MaterialApp(
    //         locale: AppConfig.currentLocale,
    //         localizationsDelegates: const [
    //           GlobalMaterialLocalizations.delegate,
    //           GlobalWidgetsLocalizations.delegate,
    //           GlobalCupertinoLocalizations.delegate,
    //         ],
    //         supportedLocales: localizedLabels.keys.toList(),
    //         debugShowCheckedModeBanner: false,
    //         theme: AppTheme.getThemeFromThemeMode(),
    //         home: const InitPage(),
    //       );
    //     }
    //   },
    // );
  }
}


