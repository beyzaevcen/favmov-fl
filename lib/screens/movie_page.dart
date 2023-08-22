import 'package:favmov_fl/contoller/moviepage_controller.dart';
import 'package:favmov_fl/widgets/movie_widget.dart';
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
              MovieWidget(
                movieModel: controller.movies.first,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
