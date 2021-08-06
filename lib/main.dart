import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpc_platform/pages/dashboard_page.dart';
import 'package:cpc_platform/pages/final_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cpc_platform/pages/landing_page.dart';
import 'package:cpc_platform/pages/penyelisihan_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Penyelisihan(),
    );
  }
}
