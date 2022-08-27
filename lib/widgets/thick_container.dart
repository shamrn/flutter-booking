import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  bool isColor = false;

  ThickContainer({Key? key, bool isColor = false}) : super(key: key) {
    this.isColor = isColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            border: Border.all(
                width: 2.5,
                color: !isColor ? Colors.white : Color(0xFF8ACCF7))));
  }
}
