import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool value;
  final Function(bool val)? onTap;
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        bool selected = value;
        if (selected) {
          onTap!(value);
        }
        print(selected);
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 85.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: value ? Color(0xFFFFDD99) : Colors.transparent,
            border: Border.all(
              color: value ? Color(0xFFFFFFFF) : Colors.transparent,
              width: 1,
            )),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFFFCFCFC),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'poppins',
          ),
        ),
      ),
    );
  }
}
