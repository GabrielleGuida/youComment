import 'package:flutter/material.dart';
import 'package:you_comment/utils/colors.dart';

class CustomIconButton extends StatelessWidget {
  IconData? customIcon;
  Color? customColor;
  Function()? customOnPressed;

  CustomIconButton(
      {super.key, this.customIcon, this.customColor, this.customOnPressed});

  CustomIconButton.favorite({super.key, required this.customOnPressed}) {
    customIcon = Icons.favorite_rounded;
    customColor = pinkPrimary;
  }

  CustomIconButton.share({super.key, required this.customOnPressed}) {
    customIcon = Icons.share_rounded;
    customColor = blackPrimary;
  }

  
  CustomIconButton.back({super.key, required this.customOnPressed}) {
    customIcon = Icons.arrow_back_ios_new_rounded;
    customColor = blackPrimary;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: customOnPressed,
      icon: Icon(customIcon, color: customColor),
    );
  }
}
