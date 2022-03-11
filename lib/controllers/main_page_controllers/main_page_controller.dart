import 'package:event/views/main_page/city_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  int currentIndex = 0;
  

  void onChanged(int index) {
    currentIndex = index;
    
    update();
  }
}
