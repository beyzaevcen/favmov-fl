import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/home_page.dart';
import '../screens/settings.dart';
import '../screens/watched_movies_page.dart';

enum NavbarPages {
  home,
  watched,
  settings,
}

class NavbarController extends GetxController {
  static NavbarController get to => Get.find();

  final currentPage = 0.obs;

  final navScrollers = {
    NavbarPages.home: ScrollController(),
    NavbarPages.watched: ScrollController(),
    NavbarPages.settings: ScrollController(),
  };

  final navPages = [
    const HomePage(key: PageStorageKey<String>("home")),
    const WatchedMoviesPage(key: PageStorageKey<String>("watched")),
    const SettingsPage(key: PageStorageKey<String>("settings")),
  ];

  @override
  void onClose() {
    for (final scroller in navScrollers.values) {
      scroller.dispose();
    }

    super.onClose();
  }

  void scrollToTop(NavbarPages page) {
    if (navScrollers[page]!.hasClients) {
      navScrollers[page]!.animateTo(
        0,
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
      );
    }
  }

  ScrollController get currentScroller =>
      navScrollers[NavbarPages.values[currentPage.value]]!;

  bool isOnPage(NavbarPages page) => currentPage.value == page.index;

  void changePage(NavbarPages page) {
    if (currentPage.value == page.index) {
      scrollToTop(page);
      return;
    }

    currentPage.value = page.index;
  }
}
