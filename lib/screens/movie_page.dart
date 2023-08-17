import 'package:favmov_fl/contoller/moviepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/theme.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MoviepageController());
    return Scaffold(
      backgroundColor: CColors.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "FavMov",
                    style:
                        TextStyle(color: CColors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: BorderSide.strokeAlignCenter,
                height: 15,
                color: CColors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Movies",
                  style: TextStyle(color: CColors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "New Movies",
                  style: TextStyle(color: CColors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
