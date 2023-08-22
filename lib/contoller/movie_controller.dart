import 'package:favmov_fl/models/movie_model.dart';
import 'package:get/get.dart';

import '../services/api.dart';

class MovieController extends GetxController {
  final movies = <MovieModel>[].obs;
  @override
  void onInit() async {
    final result = await Api.getAllMovies();
    movies.addAll(result ?? []);
    super.onInit();
  }
}
