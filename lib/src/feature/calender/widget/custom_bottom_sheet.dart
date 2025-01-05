import 'package:flutter/material.dart';
import 'package:virtual_meeting/src/feature/calender/widget/custom_button.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  final bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF313131),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // InkWell(
          //   onTap: () {},
          //   child: Container(
          //     alignment: Alignment.center,
          //     height: 40,
          //     width: 85.5,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10),
          //         border: Border.all(
          //           color: Color(0xFFFFFFFF),
          //           width: 1,
          //         )),
          //     child: Text(
          //       'Back',
          //       style: TextStyle(
          //         color: Color(0xFFFCFCFC),
          //         fontSize: 14,
          //         fontWeight: FontWeight.w600,
          //         fontFamily: 'poppins',
          //       ),
          //     ),
          //   ),
          // ),
          CustomButton(
            text: "Back",
            value: _value,
            onTap: (value) {
              setState(() {
                value = !value;
              });
            },
          ),
          Text(
            '3 steps to submit',
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          // InkWell(
          //   onTap: () {},
          //   child: Container(
          //     alignment: Alignment.center,
          //     height: 40,
          //     width: 85.5,
          //     decoration: BoxDecoration(
          //       color: Color(0xFFFFDD99),
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: Text(
          //       'Next',
          //       style: TextStyle(
          //         color: Color(0xFF616973),
          //         fontSize: 14,
          //         fontWeight: FontWeight.w600,
          //         fontFamily: 'poppins',
          //       ),
          //     ),
          //   ),
          // ),
          CustomButton(
            text: "Next",
            value: _value,
            onTap: (value) {
              setState(() {
                value = !_value;
              });
            },
          ),
        ],
      ),
    );
  }
}
