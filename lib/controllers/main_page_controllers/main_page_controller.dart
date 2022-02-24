import 'package:event/views/main_page/city_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  int currentIndex = 4;
  Widget currentPage = const CityViews();
  final pageBucket = PageStorageBucket();

  void onChanged(int index, Widget page) {
    currentIndex = index;
    currentPage = page;
    update();
  }
}
