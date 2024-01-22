import 'package:flutter/material.dart';
import 'package:you_comment/utils/colors.dart';
import 'package:you_comment/utils/images.dart';
import 'package:you_comment/widgets/texts/custom_text.dart';

///TODO REVISED
class CustomCardProduct extends StatelessWidget {
  const CustomCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 155,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                        color: grayTertiary,
                        elevation: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Expanded(flex: 5, child: SizedBox.shrink()),
                            Expanded(
                                flex: 9,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(80, 20, 20, 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText.type1(
                                        customText:
                                            "Eletrônicos e tecnologia",
                                      ),
                                      CustomText(
                                        customText:
                                            "Sua opinião é importante!",
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Image.asset(
                eletronicos,
                height: 170,
                width: 170,
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
        ]);
  }
}
