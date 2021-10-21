import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:igpzr/ui/reusable_widgets/text_widget/custom_content_text.dart';

class CustomAppBar {
  PreferredSizeWidget customAppBar() {
    return PreferredSize(
      child: AppBar(
        title: CustomContentText(
          text: 'IGPAZAR',
        ),
      ),
      preferredSize: Size(double.infinity, 100.h),
    );
  }
}
