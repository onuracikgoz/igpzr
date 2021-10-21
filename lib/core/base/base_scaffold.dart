import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:igpzr/ui/reusable_widgets/size_box_widget/custom_size_box_widget.dart';

import 'base_notify/base_notify_widget.dart';

class CustomBaseScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final bool isPadding;
  final Widget body;
  final Color? backgroundColor;
  const CustomBaseScaffold(
      {Key? key,
      this.appBar,
      required this.body,
      this.backgroundColor,
      this.isPadding = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: isPadding
                    ? EdgeInsets.only(left: 30.w, right: 30.w)
                    : EdgeInsets.zero,
                child: body,
              ),
            ),
            const CustomSizeBoxWidget(
              height: 70,
              child: BaseNotifyWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
