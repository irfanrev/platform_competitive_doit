import 'package:cpc_platform/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cpc_platform/pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
