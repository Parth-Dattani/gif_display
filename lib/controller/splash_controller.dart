import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif/screen/home_screen/home_screen.dart';
import 'base_controller.dart';

class SplashController extends BaseController {

  @override
  void onInit() {
    Timer(const Duration(seconds: 5), navigateTo);
    super.onInit();
  }

  void navigateTo() async {
    return Get.offAndToNamed(HomeScreen.pageId);
  }
}
