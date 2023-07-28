import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final name = TextEditingController();
  final mail = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final dateBirth = TextEditingController();
  final gender = TextEditingController();
  final date = DateTime.now().obs;

  final passwordShow = true.obs;
  final passwordShowtwo = true.obs;

  @override
  void onClose() {
    name.clear();
    mail.clear();
    password.clear();
    confirmPassword.clear();
    gender.clear();
    dateBirth.clear();
    dateBirth.dispose();
    super.onClose();
  }
}
