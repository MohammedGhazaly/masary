import 'package:flutter/material.dart';
import 'package:masary/core/utils/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class AllActivityScreen extends StatefulWidget {
  const AllActivityScreen({super.key});

  @override
  State<AllActivityScreen> createState() => _AllActivityScreenState();
}

class _AllActivityScreenState extends State<AllActivityScreen> {
  var appCalendartFormat = CalendarFormat.month;
  var mySelectedDate = DateTime.now();
  var myFocusedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All activity",
          style: TextStyle(
              fontSize: 24,
              color: AppColors.kBlackColor,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.now().subtract(const Duration(days: 365)),
            focusedDay: myFocusedDate,
            lastDay: DateTime.now(),
            calendarFormat: appCalendartFormat,
            onFormatChanged: (CalendarFormat calendarFormat) {
              appCalendartFormat = calendarFormat;
              setState(() {});
            },
            currentDay: mySelectedDate,
            onDaySelected: (selectedDay, focusedDay) {
              // print(selectedDay);
              // print(focusedDay);
              mySelectedDate = selectedDay;
              myFocusedDate = focusedDay;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text("Data"),
                            Text("Data"),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text("-"),
                            Text("0.0"),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
