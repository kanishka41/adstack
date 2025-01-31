import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class CalendarSection extends StatelessWidget {
  const CalendarSection({super.key});

  @override
  Widget build(BuildContext context) {

    final now = DateTime.now();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "General 10:00 AM - 7:00 PM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 260,
                  child: TableCalendar(
                    focusedDay: now,
                    firstDay: DateTime.utc(2020, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleTextStyle: TextStyle(fontSize: 10),
                    ),
                    calendarStyle: CalendarStyle(
                      todayTextStyle: TextStyle(fontSize: 10),
                      selectedTextStyle: TextStyle(fontSize: 10),
                      defaultTextStyle: TextStyle(fontSize: 10),
                      weekendTextStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      outsideTextStyle: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(fontSize: 10),
                      weekendStyle: TextStyle(fontSize: 10),
                    ),
                    rowHeight: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
