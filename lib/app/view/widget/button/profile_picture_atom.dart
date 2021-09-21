import 'package:flutter/material.dart';

class ProfilePictureAtom extends StatelessWidget {
  const ProfilePictureAtom({
    Key? key,
    this.radius = 24,
    this.tickness = 2,
    required this.color,
  }) : super(key: key);
  final double radius;
  final double tickness;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: CircleAvatar(
        radius: (radius) - (tickness),
        backgroundImage:
            const NetworkImage('https://www.fillmurray.com/100/100'),
      ),
    );
  }
}
