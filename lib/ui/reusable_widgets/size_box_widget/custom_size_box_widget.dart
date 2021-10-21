import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizeBoxWidget extends StatelessWidget {
  /// Eğer sıfır verilirse cihazın genişliğinin tamamını alır
  final double? width;

  /// Eğer sıfır verilirse cihazın yüksekliğinin tamamını alır
  final double? height;

  /// (Opsiyonel) içerisine herhangi bir widget alabilir
  final Widget? child;
  const CustomSizeBoxWidget({Key? key, this.width, this.height, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == 0 ? MediaQuery.of(context).size.width : width?.w,
      height: height == 0 ? MediaQuery.of(context).size.height : height?.h,
      child: child,
    );
  }
}
