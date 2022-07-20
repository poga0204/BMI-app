import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableIcon extends StatelessWidget {
  @override
  ReusableIcon(this.property, this.name);
  final IconData property;
  final String name;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          property,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
