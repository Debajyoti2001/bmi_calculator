import 'package:flutter/material.dart';
import '../constatnt_file.dart';
import 'constatnt_file.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.show,
  }) : super(key: key);
  final VoidCallback onTap;
  final String show;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            show,
            style: kButtonTextStyle,
          ),
        ),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
