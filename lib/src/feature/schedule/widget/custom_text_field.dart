import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controllerName;
  const CustomTextfield({super.key, required this.controllerName});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerName,
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
      cursorColor: Color(0xFFFBBA40),
      style: TextStyle(
        color: Color(0xFFFCFCFC),
      ),
    );
  }
}
