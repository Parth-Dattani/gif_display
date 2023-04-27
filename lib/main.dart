import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routs.dart';
import 'screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gifs',
      debugShowCheckedModeBanner: false,
      getPages: appPage,
      initialRoute: SplashScreen.pageId,
    );
  }
}


