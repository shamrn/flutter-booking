import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_styles.dart';

import '../utils/app_layout.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  bool isColor = false;

  AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      bool isColor = false})
      : super(key: key) {
    this.isColor = isColor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: !isColor
                ? Styles.headLineStyle3.copyWith(color: Colors.white)
                : Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,
            style: !isColor
                ? Styles.headLineStyle4.copyWith(color: Colors.white)
                : Styles.headLineStyle4),
      ],
    );
  }
}
