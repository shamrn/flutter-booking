import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/layout_builder_widget.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  bool isColor = false;

  TicketView({Key? key, required this.ticket, bool isColor: false})
      : super(key: key) {
    this.isColor = isColor;
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width / 1.2,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?167:169),
      child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(
            children: [
              /*
              showing the blue part of the card/ticket
               */
              Container(
                decoration: BoxDecoration(
                    color: !isColor ? Color(0xFF526799) : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)))),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: !isColor
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                        Expanded(child: Container()),
                        ThickContainer(
                          isColor: isColor,
                        ),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilderWidget(sections: 6, width: 5, isColor: isColor,),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: !isColor
                                        ? Colors.white
                                        : Color(0xFF8ACCF7)),
                              ),
                            ),
                          ],
                        )),
                        ThickContainer(
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        Text(
                          ticket['to']['code'],
                          style: !isColor
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['from']['name'],
                            style: !isColor
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                        Text(
                          '${ticket['flying_time']}',
                          style: !isColor
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['to']['name'],
                            style: !isColor
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /*
              showing the orange part of the card/ticket
               */
              Container(
                color: !isColor ? Styles.orangeColor : Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: !isColor
                                                  ? Colors.white
                                                  : Colors.grey.shade300),
                                        ),
                                      )),
                            );
                          },
                        ),
                      ),
                    )),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                    )
                  ],
                ),
              ),
              /*
              bottom part of the orange card/ticket
               */

              Container(
                decoration: BoxDecoration(
                    color: !isColor ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(!isColor ? 21:0
                        ),
                        bottomRight: Radius.circular(!isColor ? 21:0))),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: 'Дата',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: 'Время отправления',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: 'Номер',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
