import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:virtual_meeting/src/constants/appStyle.dart';

class CalenderWidget extends StatelessWidget {
  final focuseDay;
  final onDaySelected;
  final selectedDay;
  const CalenderWidget({
    super.key,
    required this.focuseDay,
    required this.onDaySelected,
    required this.selectedDay,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        defaultTextStyle: TextStyle(
          color: Color(0xFFFCFCFC),
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'poppins',
        ),
        defaultDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100),
        ),
        todayDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100),
        ),
        selectedDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xFFFBBA40),
          borderRadius: BorderRadius.circular(100),
        ),
        weekendDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100),
        ),
        disabledDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100),
        ),
        selectedTextStyle: TextStyle(
          color: Color(0xFF000000),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        disabledTextStyle: AppTextStyle.textStyle,
        weekendTextStyle: AppTextStyle.textStyle,
      ),
      headerStyle: HeaderStyle(
        titleCentered: true,
        leftChevronIcon: Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        rightChevronIcon: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          color: Color(0xFFFCFCFC),
        ),
        formatButtonVisible: false,
        formatButtonTextStyle: TextStyle(color: Colors.white),
      ),
      focusedDay: focuseDay,
      firstDay: DateTime.now(),
      lastDay: DateTime.utc(2030, 4, 14),
      selectedDayPredicate: (day) => isSameDay(selectedDay, day),
      onDaySelected: onDaySelected,
    );
  }
}
