
import 'package:igpzr/core/config/path_config.dart';

class ImageConstant {
  static ImageConstant? _instance;
  static ImageConstant get instance =>
      _instance ??= ImageConstant._initialize();

 // final String logo = "${PathConfig.svgPath}blinck_logo.svg";


  ImageConstant._initialize();
}
