import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif/model/data_response.dart';
import '../services/service.dart';
import 'controller.dart';

class HomeController extends BaseController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxList<Results> dataList = <Results>[].obs;
  ScrollController scrollController = ScrollController();
  RxInt dataLimit = 50.obs;
  RxBool isPaginateData = false.obs;

  final List<String> imgList = [
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/200/300?grayscale",
    "https://picsum.photos/200/300/?blur",
    "https://picsum.photos/200/300/?blur=2",
  ];

  @override
  void onInit() {
    scrollController.addListener(() async {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        isPaginateData.value = true;
        if (isPaginateData.value) {
          dataLimit.value + 10;
          getData(dataLimit.value);
        }
      }
    });
    getData(dataLimit.value);
    super.onInit();
  }

  void getData(int dataLimit) async {
    loader.value = true;
    var response = await RemoteServices.getDataList(limit:dataLimit);
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
       var data = jsonData['results'];
      if (data.isNotEmpty) {
        for (var i in data) {
          dataList.add(Results.fromJson(i));
        }
        loader.value = false;
      } else {
        loader.value = false;
        isPaginateData.value = false;
      }
    }


    // } catch (e) {debugPrint("Error :- ${e.toString()}");}
  }

}



