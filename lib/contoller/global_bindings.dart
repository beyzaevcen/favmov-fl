import 'package:get/get.dart';

import 'auth_controller.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }

  static void resetProfileControllers({required bool isLogin}) {
    try {} catch (_) {}
  }
}
