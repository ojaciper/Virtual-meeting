import 'package:cupertino_calendar_picker/cupertino_calendar_picker.dart';
import 'package:flutter/material.dart';
import 'package:virtual_meeting/src/feature/schedule/schedule_meeting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Virtual Meeting',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFFFBBA40),
          appBarTheme: AppBarTheme(color: Color(0xFF313131)),
          bottomSheetTheme: BottomSheetThemeData(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          useMaterial3: true,
        ),
        home: const ScheduleMeetingScreen());
  }
}
