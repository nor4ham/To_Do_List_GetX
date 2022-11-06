import 'package:get/get.dart';

import 'Controller/Controller..dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<Controller>(Controller(), tag: "data", permanent: true);
  }
}
