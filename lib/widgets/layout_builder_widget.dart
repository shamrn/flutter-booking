import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int sections;
  final double width;
  bool isColor = false;

  AppLayoutBuilderWidget(
      {Key? key, required this.sections, required this.width, isColor = false})
      : super(key: key) {
    this.isColor = isColor;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / sections).floor(),
                (index) => SizedBox(
                      width: width,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:
                                !isColor ? Colors.white : Colors.grey.shade300),
                      ),
                    )));
      },
    );
  }
}
