import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif/model/data_response.dart';
import '../services/service.dart';
import 'controller.dart';

class HomeController extends BaseController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //final getImagesModel = Rxn<ImageResponse>();
  RxList<Results> dataList = <Results>[].obs;

  final List<String> imgList = [
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/200/300?grayscale",
    "https://picsum.photos/200/300/?blur",
    "https://picsum.photos/200/300/?blur=2",
  ];

  @override
  void onInit() {
    super.onInit();
   getData();
  }

  void getData() async {
    loader.value = true;
    var response = await RemoteServices.getDataList();
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
      }
    }


    // } catch (e) {debugPrint("Error :- ${e.toString()}");}
  }

}



