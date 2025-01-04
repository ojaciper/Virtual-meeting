import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Color(0xFF313131),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'One time',
                style: TextStyle(
                  color: Color(0xFFFCFCFC),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              Checkbox(
                value: false,
                shape: CircleBorder(),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (e) {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recurring',
                style: TextStyle(
                  color: Color(0xFFFCFCFC),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              Checkbox(
                value: false,
                shape: CircleBorder(),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (e) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
