import 'package:favmov_fl/screens/movie_page.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var currentindex = 0.obs;
  final pages = [
    const MoviePage(),
  ];
}
