import 'package:favmov_fl/contoller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

import '../utils/theme.dart';

class DateTimeWidget extends GetView<SignUpController> {
  final String text;

  const DateTimeWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        onTap: () async {
          DatePicker.showDatePicker(
            context,
            onConfirm: (date) {
              controller.date.value = date;
              controller.dateBirth.text =
                  "${date.day.toString().padLeft(2, "0")}.${date.month.toString().padLeft(2, "0")}.${date.year}";
            },
            currentTime: DateTime.now(),
            maxTime: DateTime.now(),
          );
        },
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        controller: controller.dateBirth,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: CColors.mainColor, width: 2)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          filled: true,
          fillColor: CColors.white,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "Date of Birth",
        ),
      ),
    );
  }
}
