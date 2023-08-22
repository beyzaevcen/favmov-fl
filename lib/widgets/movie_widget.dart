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
      width: 170,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(movieModel.imageUrl.toString())),
          border: Border.all(
            width: 1,
            color: CColors.mainColor,
          )),
    );
  }
}
