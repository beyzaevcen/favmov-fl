import 'package:favmov_fl/models/movie_model.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class MovieWidget extends StatelessWidget {
  final MovieModel movieModel;

  const MovieWidget({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/en/0/0b/Barbie_2023_poster.jpg")),
          border: Border.all(
            width: 1,
            color: CColors.white,
          )),
      child: Text(movieModel.title),
    );
  }
}
