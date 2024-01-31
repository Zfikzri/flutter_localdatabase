import 'package:flutter_local_database/pages/create/controller.dart';

import 'package:get/get.dart';


class NoteCreationPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoteCreationPageController());
  }
}