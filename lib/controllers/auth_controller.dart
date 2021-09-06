import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpc_platform/pages/dashboard_page.dart';
import 'package:cpc_platform/pages/landing_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  //Fungsi untuk login dengan email
  void onLogin(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      Get.to(Dashboard(userCredential: userCredential),
          transition: Transition.fadeIn);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar('Error', 'User not found');
      } else if (e.code == 'wrong-password') {
        Get.snackbar('Error', 'Wrong Password');
      }
    }
  }

  //fungsi logout
  void onLogout() {
    Get.defaultDialog(
        title: 'Logout',
        middleText: 'Keluar sekarang?',
        confirm: IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Get.to(LandingPage(), transition: Transition.fadeIn);
            },
            icon: Icon(Icons.done_rounded)),
        cancel: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.close_rounded)));
  }
}
