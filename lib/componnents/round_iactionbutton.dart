import 'package:flutter/material.dart';
class Roundactionbuttonn extends StatelessWidget {
  Roundactionbuttonn({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
