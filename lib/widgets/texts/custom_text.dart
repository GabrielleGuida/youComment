import 'package:flutter/material.dart';
import 'package:you_comment/utils/colors.dart';

class CustomText extends StatelessWidget {
  final String customText;
  double? customFonSize;
  Color? customColor;
  FontWeight? customFontWeight;

  CustomText({super.key, required this.customText});

  /// - FontSize: 20
  /// - Color: Black
  /// - FontWeight: Bold
  CustomText.type1({required this.customText}) {
    customFontWeight = FontWeight.bold;
    customFonSize = 20;
  }

  @override
  Widget build(BuildContext context) {
    return Text(customText,
        style: TextStyle(
            fontSize: customFonSize ?? 14,
            color: customColor ?? blackPrimary,
            fontWeight: customFontWeight ?? FontWeight.normal));
  }
}
