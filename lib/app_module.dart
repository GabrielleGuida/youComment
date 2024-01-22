import 'package:flutter_modular/flutter_modular.dart';
import 'package:you_comment/modules/home/controller/home_controller.dart';
import 'package:you_comment/modules/home/home_module.dart';
import 'package:you_comment/modules/products/details_product_module.dart';

class AppModule extends Module {


  @override
  void binds(i){
    i.addLazySingleton(() => HomeController());
  }

  @override
  void routes(r) {
    r.module('/homeModule', module: HomeModule());
    r.module('/detailsProduct', module: DetailsProductModule());
  }
}