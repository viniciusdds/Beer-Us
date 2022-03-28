import 'package:beerus/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main(){
  runApp(
      GetMaterialApp(
        title: "Beer Us",
        initialRoute: AppPages.INITIAL,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
      )
  );
}