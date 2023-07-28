import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();

  final passwordShow = true.obs;
}
