import 'package:flutter/material.dart';
class reusableCard extends StatelessWidget {
  reusableCard({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration:
            BoxDecoration(color: colour, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
