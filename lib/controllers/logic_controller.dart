import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LogicController extends GetxController {
  final bool isFinal = false;
  var status = 'Belum Selesai'.obs;

  void onStatusChange() {
    status = 'Selesai'.obs;
  }
}
