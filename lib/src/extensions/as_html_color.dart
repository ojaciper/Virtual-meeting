import 'package:flutter/material.dart';
import 'package:virtual_meeting/src/extensions/remove_all.dart';

extension AsHtmlColorToColor on String {
  Color htmlColorToColor() => Color(
        int.parse(
          removeAll(['0x', '#']).padLeft(8, 'ff'),
        ),
      );
}
