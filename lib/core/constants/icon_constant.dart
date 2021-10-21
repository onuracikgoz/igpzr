

import 'package:igpzr/core/config/path_config.dart';

class IconConstant {
  static IconConstant? _instance;
  static IconConstant get instance => _instance ??= IconConstant._initialize();

  final String iphone = "${PathConfig.svgPath}iphone.svg";


  IconConstant._initialize();
}
