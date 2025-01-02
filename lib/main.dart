import 'package:flutter/material.dart';
import 'package:virtual_meeting/src/constants/colors.dart';
import 'package:virtual_meeting/src/feature/calender/schedule_meeting_screen.dart';

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
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(color: Color(0xFF313131)),
          useMaterial3: true,
        ),
        home: const ScheduleMeetingScreen());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
