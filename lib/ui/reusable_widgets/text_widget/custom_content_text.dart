import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContentText extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? onTap;
  final bool hasUnderline;
  final TextAlign? textAlign;
  const CustomContentText(
      {Key? key,
      required this.text,
      this.color,
      this.hasUnderline = false,
      this.onTap,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
          color: color ?? Colors.black, //TODO: bu kısmı optimize et!!,
          decoration: hasUnderline ? TextDecoration.underline : null,
          fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
