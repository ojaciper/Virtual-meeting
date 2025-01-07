import 'package:flutter/material.dart';

class CustomRadioBox extends StatelessWidget {
  final int value;
  final int groupValue;
  final String name;
  final Color? color;
  final Color? selectColor;

  final Function(int value)? onChange;

  const CustomRadioBox({
    super.key,
    required this.name,
    required this.onChange,
    required this.groupValue,
    required this.value,
    this.color = Colors.transparent,
    this.selectColor = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            color: Color(0xFFFCFCFC),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: () {
            bool selected = value != groupValue;
            if (selected) {
              onChange!(value);
            }
          },
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: value == groupValue ? selectColor : color,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFF626262),
                )),
          ),
        )
      ],
    );
  }
}
