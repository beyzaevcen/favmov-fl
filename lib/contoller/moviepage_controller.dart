import 'package:get/get.dart';

import '../models/movie_model.dart';
import '../services/api.dart';

class MoviepageController extends GetxController {
  final initialPage = 0.obs;

  final movies = <MovieModel>[].obs;
  @override
  void onInit() async {
    final result = await Api.getAllMovies();
    movies.addAll(result ?? []);
    super.onInit();
  }
}
