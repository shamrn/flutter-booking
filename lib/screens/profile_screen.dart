import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Бронируйте билеты',
                      style: Styles.headLineStyle1.copyWith(fontSize: 21)),
                  Gap(AppLayout.getHeight(2)),
                  Text('Москва',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF526799)),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Премиум статус',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    color: Styles.primaryColor,
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: Color(0xFF264CD2),
                      ),
                      color: Colors.transparent),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Вы получили новую награду',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'В этом году вы сорвешили 95 полетов',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Набранные километры',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(25)),
          Center(
              child: Text(
            '149202',
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Styles.textColor),
          )),
          Gap(AppLayout.getHeight(25)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Километров набрано',
                    style: Styles.headLineStyle4.copyWith(fontSize: 16),
                  ),
                  Text(
                    '23 Мая 2022',
                    style: Styles.headLineStyle4.copyWith(fontSize: 16),
                  )
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '23 042',
                        style: Styles.headLineStyle3,
                      ),
                      Text(
                        'Airline CO',
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'км',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      ),
                      Text(
                        'получен от',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '6829',
                        style: Styles.headLineStyle3,
                      ),
                      Text(
                        'Победа',
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'км',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      ),
                      Text(
                        'получен от',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1152',
                        style: Styles.headLineStyle3,
                      ),
                      Text(
                        'Exuma ',
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'км',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      ),
                      Text(
                        'получен от',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '645',
                        style: Styles.headLineStyle3,
                      ),
                      Text(
                        'Omio',
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'км',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      ),
                      Text(
                        'получен от',
                        style: Styles.headLineStyle4.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(25)),
              InkWell(
                onTap: () {},
                child: Text(
                  'Больше информации',
                  style: Styles.headLineStyle3
                      .copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
