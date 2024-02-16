import 'package:flutter/material.dart';
import 'package:flutter_timeline_calendar/timeline/model/calendar_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/day_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/headers_options.dart';
import 'package:flutter_timeline_calendar/timeline/utils/calendar_types.dart';
import 'package:flutter_timeline_calendar/timeline/widget/timeline_calendar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: const Color.fromARGB(255, 249, 121, 163),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 20),
                    child: Row(

                      children: [
                        Container(
                          color: Colors.amber,
                          child: const CircleAvatar(
                            radius: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.amber,
                              child: const Text(
                                "Hello",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Positioned(
                              top: 100,
                              right: 0,
                              child: Container(
                                color: Colors.amber,
                                child: const Text(
                                  "Jhon",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              
                  Row(
                    children: [
                      const SizedBox(
                        width: 200,
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 275,
              child: Container(
                height: 600,
                width: 394,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 400,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: TimelineCalendar(
                        calendarType: CalendarType.GREGORIAN,
                        calendarLanguage: "en",
                        calendarOptions: CalendarOptions(
                          viewType: ViewType.DAILY,
                          toggleViewType: true,
                          headerMonthElevation: 0,
                          // headerMonthShadowColor: Colors.black26,
                          headerMonthBackColor: Colors.transparent,
                        ),
                        dayOptions: DayOptions(
                            compactMode: true,
                            weekDaySelectedColor: const Color(0xff3AC3E2),
                            disableDaysBeforeNow: true),
                        headerOptions: HeaderOptions(
                            weekDayStringType: WeekDayStringTypes.SHORT,
                            monthStringType: MonthStringTypes.FULL,
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            headerTextColor: Colors.black),
                        onChangeDateTime: (datetime) {
                          // ignore: avoid_print
                          print(datetime.getDate());
                        },
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 400,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
