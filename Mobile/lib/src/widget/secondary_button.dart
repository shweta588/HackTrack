import 'package:flutter/material.dart';

import '../themes/spacing/linear_scale.dart';

class SecondaryButton extends StatelessWidget {
  final Function onPress;
  final Color borderColor;
  final String label;
  final double width;
  final double height;
  final Color buttonColor;
  final Color labelColor;

  const SecondaryButton({
    Key key,
    @required this.onPress,
    this.borderColor = const Color(0xffc7c3fa),
    this.label = '',
    this.width = 250.0,
    this.height = 40.0,
    this.buttonColor = Colors.white,
    this.labelColor = const Color(0xff3071ff),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: space_golden_dream,
              color: labelColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
