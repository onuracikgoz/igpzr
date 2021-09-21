import 'package:flutter/material.dart';

class LabelButtonWidget extends StatelessWidget {
  const LabelButtonWidget({
    Key? key,
    required this.labelText,
    required this.onPressed,
    this.color = Colors.white,
  });
  final String labelText;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        labelText,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
