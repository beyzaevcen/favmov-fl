import 'package:dio/dio.dart';
import 'package:favmov_fl/models/movie_model.dart';

class Api {
  static Future<Dio> dioAuth() async {
    BaseOptions options = BaseOptions(
      baseUrl: "http://127.0.0.1:7770",
      // headers: {"Accept": "application/json"},
      responseType: ResponseType.json,
    );
    return Dio(options);
  }

  static Future<List<MovieModel>?> getAllMovies() async {
    try {
      Dio dio = await Api.dioAuth();
      Response response = await dio.get("/movies");

      if (response.statusCode == 200) {
        List<dynamic> items = response.data;
        return items.map((e) => MovieModel.fromMap(e)).toList();
      }

      return null;
    } on DioError {
      return null;
    }
  }
  /*

  static Future<PollModel?> addPoll(CreatePoll poll) async {
    try {
      Dio dio = await Api.dioAuth();
      Response response = await dio.post("/poll", data: poll.toMap());

      if (response.statusCode == 200) {
        return PollModel.fromMap(response.data);
      }

      return null;
    } on DioError catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<PollModel?> getPoll(int id) async {
    try {
      Dio dio = await Api.dioAuth();
      Response response = await dio.get("/poll", queryParameters: {"id": id});

      if (response.statusCode == 200) {
        return PollModel.fromMap(response.data);
      }

      return null;
    } on DioError catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<List<int>?> patchVotes(int id, int index) async {
    try {
      Dio dio = await Api.dioAuth();
      Response response = await dio.patch("/poll?id=$id&index=$index");

      if (response.statusCode == 200) {
        List<dynamic> items = response.data;

        return items.map((e) => e as int).toList();
      }

      return null;
    } on DioError catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
  */
}
