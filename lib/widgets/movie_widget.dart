import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  String movieName;

  MovieWidget({
    Key? key,
    required this.movieName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(movieName),
    );
  }
}
