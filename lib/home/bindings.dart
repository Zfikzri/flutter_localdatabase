import 'package:flutter_local_database/home/controller.dart';
import 'package:get/get.dart';


class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}