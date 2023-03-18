import 'package:flutter/material.dart';
import '../components/constatnt_file.dart';
import '../constatnt_file.dart';

class IconWidget extends StatelessWidget {
  IconWidget(this.icon,this.text);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        Text(
          text,
          style: kTextStyle,
        )
      ],
    );
  }
}
