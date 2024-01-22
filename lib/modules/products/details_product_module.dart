import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:you_comment/app_widget.dart';
import 'package:you_comment/modules/home/controller/home_controller.dart';
import 'package:you_comment/modules/products/view/details_product_view.dart';

class DetailsProductModule extends Module {
  static const String routeName = "DetailsProductModule";

  @override
  void binds(i) {
    i.addLazySingleton(() => HomeController());
  }

  @override
  void routes(r) {
    r.child('/detailsProduct', child: (context) => DetailsProductView());
  }

  //??
  Widget get bootstrap => const AppWidget();
}
