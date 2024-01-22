import 'package:flutter/material.dart';
import 'package:you_comment/modules/products/view/details_product_view.dart';
import 'package:you_comment/utils/colors.dart';
import 'package:you_comment/widgets/model_viewer/custom_model_viewer.dart';

class CustomCardDetailsProduct extends StatelessWidget {
  String customImage;
  String customDescription;
  CustomCardDetailsProduct(
      {super.key, required this.customImage, required this.customDescription});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsProductView(customImage: customImage),
          ),
        );
      },
      child: Card(
        color: grayTertiary,
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 130,
                child: CustomModelViewer(
                  customSRC: customImage,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(customDescription)),
          ],
        ),
      ),
    );
  }
}
