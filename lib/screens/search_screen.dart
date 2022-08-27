import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/double_text_widget.dart';
import 'package:ticket_booking/widgets/icon_text_widget.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(60)),
            Text(
              'Что вы ищете?',
              style: Styles.headLineStyle1.copyWith(fontSize: 35),
            ),
            Gap(AppLayout.getHeight(20)),
            AppTicketTabs(firstTab: 'Полёты', secondTab: 'Отели'),
            Gap(AppLayout.getHeight(25)),
            AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Вылет'),
            Gap(AppLayout.getHeight(10)),
            AppIconText(icon: Icons.flight_land_rounded, text: 'Пребытие'),
            Gap(AppLayout.getHeight(25)),
            InkWell(
              onTap: () {

              },
              child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(18),
                      horizontal: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                    color: Color(0xD91130CE),
                  ),
                  child: Center(
                    child: Text(
                      'Найти билет',
                      style: Styles.textStyle
                          .copyWith(color: Colors.white, fontSize: 20),
                    ),
                  )),
            ),
            Gap(AppLayout.getHeight(40)),
            AppDoubleTextWidget(
                bigText: 'Новости', smallText: 'Открыть все'),
            Gap(AppLayout.getHeight(15)),
            Row(
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/sit.webp'))),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text(
                          '20% скидка на лоукостеры! Только в этом месяце.',
                      style: Styles.headLineStyle2,)
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
