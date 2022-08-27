import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/hotel_screen.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Доброе утро', style: Styles.headLineStyle3),
                        const Gap(5),
                        Text('Бронируйте билеты', style: Styles.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/img_1.png'))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text('Поиск', style: Styles.headLineStyle4)
                    ],
                  ),
                ),
                const Gap(40),
                AppDoubleTextWidget(bigText: 'Полёты', smallText: 'Открыть всё')
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(ticket: ticket))
                  .toList(),
            ),
          ),
          const Gap(40),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppDoubleTextWidget(
                bigText: 'Отели',
                smallText: 'Открыть все',
              )),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:
                  hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            ),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
