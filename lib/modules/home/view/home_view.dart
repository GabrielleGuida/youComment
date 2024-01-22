import 'package:flutter/material.dart';
import 'package:you_comment/utils/colors.dart';
import 'package:you_comment/utils/images.dart';
import 'package:you_comment/widgets/buttons/custon_icon_button.dart';
import 'package:you_comment/widgets/cards/custom_card_details_product.dart';
import 'package:you_comment/widgets/cards/custom_card_product.dart';
import 'package:you_comment/widgets/texts/custom_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText.type1(customText: "Olá Gabrielle, seja bem vinda!"),
            CustomIconButton(
              customIcon: Icons.menu,
              customColor: blackPrimary,
              customOnPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Pesquisar",
                  labelStyle: TextStyle(color: blackPrimary),
                  suffixIcon: Icon(
                    Icons.search,
                    color: blackPrimary,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: blackPrimary),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: blackPrimary),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CustomCardProduct(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.type1(customText: "Produtos"),
                  const SizedBox(height: 10),
                  GridView(
                    semanticChildCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                    ),
                    children: [
                      CustomCardDetailsProduct(
                          customImage: control,
                          customDescription: "Microsoft Surface Laptop"),
                      CustomCardDetailsProduct(
                          customImage: controlBlack,
                          customDescription: "Controle Xbox Preto"),
                      CustomCardDetailsProduct(
                          customImage: holoLens,
                          customDescription: "Hole Lens"),
                      CustomCardDetailsProduct(
                          customImage: laptop,
                          customDescription: "Microsoft Surface Laptop"),
                      CustomCardDetailsProduct(
                          customImage: notebook,
                          customDescription: "Notebook Microsoft"),
                      CustomCardDetailsProduct(
                          customImage: surfaceLaptop,
                          customDescription: "Microsoft Surface Laptop"),
                      CustomCardDetailsProduct(
                          customImage: xbox,
                          customDescription: "XBOX Preto"),
                      CustomCardDetailsProduct(
                          customImage: xboxTwo,
                          customDescription: "Xbox Branco"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
