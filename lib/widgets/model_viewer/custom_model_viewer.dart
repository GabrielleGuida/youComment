import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:you_comment/utils/colors.dart';

class CustomModelViewer extends StatelessWidget {
  final String customSRC;
  const CustomModelViewer({super.key, required this.customSRC});

  @override
  Widget build(BuildContext context) {
    return ModelViewer(
      backgroundColor: grayPrimary,
      src: customSRC,
      //alt: 'A 3D model of an astronaut',
      ar: true,
      autoRotate: true,
      cameraControls: true,
      //disableZoom: true,
    );
  }
}
