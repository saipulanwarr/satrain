import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.PILIH_TIKER,
      getPages: AppPages.routes,
    ),
  );
}

//Flutter UI 04 Train Ticket 1:02:00
