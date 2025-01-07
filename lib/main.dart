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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Testing out time"),
            Container(
              width: 100,
              child: CupertinoTimePickerButton(
                initialTime: const TimeOfDay(hour: 9, minute: 41),
                offset: Offset(-size.width / 5, -size.height / 3.7),
                onTimeChanged: (time) {},
              ),
            ),
            Container(
              child: CupertinoTimePickerButton(
                offset: Offset(10, -size.height / 3.7),
                initialTime: const TimeOfDay(hour: 9, minute: 41),
                onTimeChanged: (time) {},
              ),
            )
          ],
        )),
      ),
    );
  }
}
