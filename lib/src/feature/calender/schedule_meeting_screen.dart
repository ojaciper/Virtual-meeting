import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:virtual_meeting/src/constants/strings.dart';

class ScheduleMeetingScreen extends StatefulWidget {
  const ScheduleMeetingScreen({super.key});
  @override
  State<ScheduleMeetingScreen> createState() => _ScheduleMeetingScreenState();
}

class _ScheduleMeetingScreenState extends State<ScheduleMeetingScreen> {
  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
