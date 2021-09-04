import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpc_platform/admin/page/dashboard_admin.dart';
import 'package:cpc_platform/controllers/auth_controller.dart';
import 'package:cpc_platform/pages/dashboard_page.dart';
import 'package:cpc_platform/pages/final_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot) {
        print(snapshot.data);
        if (snapshot.connectionState == ConnectionState.active) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: LandingPage(),
          );
        }
        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
