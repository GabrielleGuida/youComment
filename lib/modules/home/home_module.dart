import 'package:flutter_modular/flutter_modular.dart';
import 'package:you_comment/modules/home/controller/home_controller.dart';
import 'package:you_comment/modules/home/view/home_view.dart';

class HomeModule extends Module {
  static const String routeName = "HomeModule";

  @override
  void binds(i) {
    i.addLazySingleton(() => HomeController());
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomeView());
  }
}
