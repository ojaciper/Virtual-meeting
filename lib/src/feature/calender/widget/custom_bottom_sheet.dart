import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  bool _isPressed = false;
  bool isPressed = true;

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
          InkWell(
            onTap: () {
              setState(() {
                isPressed = false;
                _isPressed = true;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 85.5,
              decoration: BoxDecoration(
                  color: _isPressed == true
                      ? Color(0xFFFFDD99)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: _isPressed == false
                        ? Color(0xFFFFFFFF)
                        : Colors.transparent,
                    width: 1,
                  )),
              child: Text(
                'Back',
                style: TextStyle(
                  color: _isPressed == true
                      ? Color(0xFF616973)
                      : Color(0xFFFCFCFC),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                ),
              ),
            ),
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
          InkWell(
            onTap: () {
              setState(() {
                isPressed = true;
                _isPressed = false;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 85.5,
              decoration: BoxDecoration(
                color: _isPressed == false
                    ? Color(0xFFFFDD99)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: _isPressed == true
                      ? Color(0xFFFFFFFF)
                      : Colors.transparent,
                  width: 1,
                ),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  color: _isPressed == false
                      ? Color(0xFF616973)
                      : Color(0xFFFCFCFC),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
