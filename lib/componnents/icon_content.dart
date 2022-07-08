import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';


class newWidget extends StatelessWidget {
  newWidget({required this.icons, required this.name});
  final IconData icons;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          name,
          style: labeltextStyle,
        ),
      ],
    );
  }
}
