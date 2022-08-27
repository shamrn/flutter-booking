import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/layout_builder_widget.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(60)),
                Text(
                  'Билеты',
                  style: Styles.headLineStyle1.copyWith(fontSize: 35),
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    firstTab: 'Предыдущие', secondTab: 'Предстоящие'),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnLayout(
                              firstText: 'Flutter DB',
                              secondText: 'Пассажир',
                              alignment: CrossAxisAlignment.start,
                              isColor: true,
                            ),
                            AppColumnLayout(
                              firstText: '9811 6423491',
                              secondText: 'Пасспорт',
                              alignment: CrossAxisAlignment.end,
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getHeight(20)),
                        AppLayoutBuilderWidget(
                          sections: 15,
                          width: 5,
                          isColor: true,
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnLayout(
                              firstText: '1181 0412 2101',
                              secondText: 'Номер билета',
                              alignment: CrossAxisAlignment.start,
                              isColor: true,
                            ),
                            AppColumnLayout(
                              firstText: 'GE212D',
                              secondText: 'Код билета',
                              alignment: CrossAxisAlignment.end,
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getHeight(20)),
                        AppLayoutBuilderWidget(
                          sections: 15,
                          width: 5,
                          isColor: true,
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(' *** 5452',
                                      style: Styles.headLineStyle3)
                                ]),
                                Gap(5),
                                Text(
                                  'Способ оплаты',
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                            AppColumnLayout(
                              firstText: '₽ 11900 ',
                              secondText: 'Стоимость',
                              alignment: CrossAxisAlignment.end,
                              isColor: true,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                      ],
                    )),
                /*
                qr code
                 */
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(21))),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  child: QrImage(
                    data: 'https://github.com/shamrn',
                    version: QrVersions.auto,
                    size: AppLayout.getHeight(250),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
