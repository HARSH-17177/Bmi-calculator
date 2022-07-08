import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';


class bottombutton extends StatelessWidget {
  bottombutton({required this.buttonTitle, required this.onTap});
  final VoidCallback onTap; //use void call back instead of the function
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomcontainercolor,
        height: bottomcontainerheight,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kcalculatestyle,
          ),
        ),
      ),
    );
  }
}
