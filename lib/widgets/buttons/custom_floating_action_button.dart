import 'package:flutter/material.dart';
import 'package:you_comment/utils/colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  String? customText;
  Widget? customIcon;
  Function()? customOnPressed;

  CustomFloatingActionButton(
      {super.key,
      this.customText,
      this.customIcon,
      required this.customOnPressed});

  CustomFloatingActionButton.comment(
      {super.key, required this.customOnPressed, this.customText}) {
    customText = "Comentar";
    customIcon = const Icon(Icons.comment, color: blackPrimary);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: customOnPressed,
      backgroundColor: graySecondary,
      splashColor: graySecondary,
      hoverColor: graySecondary,
      focusColor: graySecondary,
      label: Row(
        children: [
          customIcon ?? const SizedBox.shrink(),
          const SizedBox(width: 10),
          Text(customText ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: blackPrimary)),
        ],
      ),
    );
  }
}
