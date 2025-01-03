import 'package:cupertino_calendar_picker/cupertino_calendar_picker.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:virtual_meeting/src/constants/strings.dart';
import 'package:virtual_meeting/src/feature/calender/widget/calender_widget.dart';

class ScheduleMeetingScreen extends StatefulWidget {
  const ScheduleMeetingScreen({super.key});
  @override
  State<ScheduleMeetingScreen> createState() => _ScheduleMeetingScreenState();
}

class _ScheduleMeetingScreenState extends State<ScheduleMeetingScreen> {
  DateTime? _selectedDay;
  DateTime _focuseDay = DateTime.now();
  @override
  void initState() {
    super.initState();
    _selectedDay = _focuseDay;
  }

  void _onDaySelected(DateTime selectDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectDay)) {
      setState(() {
        _selectedDay = selectDay;
        _focuseDay = focusedDay;
      });
    }
    print(_selectedDay);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 100,
        // leadingWidth: 100,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_new,
          size: 24,
          color: Colors.white,
        ),
        title: Text(
          Strings.appBarTitle,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.virtualLink,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 255,
              child: Text(
                Strings.caption,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: Strings.hintText,
                fillColor: Color(0xFF313131),
                filled: true,
                hintStyle: TextStyle(
                  color: Color(0xFFACACAC),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'poppins',
                  fontSize: 16,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xFFFCFCFC),
                  ),
                ),
              ),
              style: TextStyle(
                color: Color(0xFFFCFCFC),
              ),
            ),
            const SizedBox(height: 24),
            Divider(
              color: Color(0xFF494949),
            ),
            const SizedBox(height: 24),
            Text(
              Strings.dateTime,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'poppins',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              Strings.schedule,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'poppins',
                color: Colors.white,
              ),
            ),
            CalenderWidget(
              focuseDay: _focuseDay,
              selectedDay: _selectedDay,
              onDaySelected: _onDaySelected,
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start time",
                      style: TextStyle(
                        color: Color(0XFFFCFCFC),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins',
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 180,
                      color: Color(0xFF313131),
                      child: CupertinoTimePickerButton(
                        initialTime: const TimeOfDay(hour: 9, minute: 41),
                        // offset: Offset(-size.width / 5, -size.height / 3.7),
                        onTimeChanged: (time) {
                          print(time.toString());
                        },
                        buttonDecoration: PickerButtonDecoration(
                          textStyle: TextStyle(
                            color: Color(0xFFFCFCFC),
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        mainColor: Color(0xFFFCFCFC),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "End time",
                      style: TextStyle(
                        color: Color(0XFFFCFCFC),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins',
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 180,
                      color: Color(0xFF313131),
                      child: CupertinoTimePickerButton(
                        initialTime: const TimeOfDay(hour: 9, minute: 41),
                        onTimeChanged: (time) {},
                        buttonDecoration: PickerButtonDecoration(
                          textStyle: TextStyle(
                            color: Color(0xFFFCFCFC),
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        mainColor: Color(0xFFFCFCFC),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 30,
              color: Color(0xFFFCFCFC),
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
