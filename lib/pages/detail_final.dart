import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpc_platform/pages/final_page.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:lottie/lottie.dart';

class DetailFinal extends StatefulWidget {
  final DocumentSnapshot data;
  DetailFinal({required this.data});

  @override
  _DetailFinalState createState() => _DetailFinalState();
}

class _DetailFinalState extends State<DetailFinal> {
  double progress = 0.0;

  void uploadFIle() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      Uint8List? file = result.files.first.bytes;
      String fileName = result.files.first.name;

      UploadTask uploadTask = FirebaseStorage.instance
          .ref()
          .child('hasil-babak2/$fileName')
          .putData(file!);

      uploadTask.snapshotEvents.listen((event) {
        setState(() {
          progress = ((event.bytesTransferred.toDouble() /
                      event.totalBytes.toDouble()) *
                  100)
              .roundToDouble();

          print(progress);
        });
      });
    }
  }

  void submitCode() {
    Get.defaultDialog(
      titlePadding: EdgeInsets.all(15),
      radius: 10,
      title: 'Success',
      middleText: 'Jawaban berhasil di submit!',
      confirm: ElevatedButton(
        onPressed: () => Get.back(),
        child: Text('Oke'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 7, color: Colors.grey),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/logopekanit.png',
                    height: 65,
                    width: 65,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'DoIT 5.0',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/noimage.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(85),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.teal, Colors.green],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // NOTE : container berisi soal
                    Container(
                        margin: EdgeInsets.fromLTRB(200, 100, 200, 20),
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          widget.data['soal'],
                          fit: BoxFit.fitWidth,
                        )),
                    // NOTE : Container untuk form submit
                    Container(
                      margin: EdgeInsets.fromLTRB(200, 10, 200, 50),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Submit Solution',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 22),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Source Code',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16),
                                          ),
                                          Text(
                                            'Format nama file : Nama Tim_Nama Soal.zip/rar/cpp/java/c',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: uploadFIle,
                                            child: Container(
                                              width: 100,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 15, vertical: 8),
                                              child: Center(
                                                child: Text(
                                                  'Browse',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                child: LiquidCircularProgressIndicator(
                                  value: progress / 100,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.green),
                                  backgroundColor: Colors.white,
                                  direction: Axis.vertical,
                                  center: Text(
                                    '$progress%',
                                    style: GoogleFonts.poppins(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: submitCode,
                            child: Container(
                              width: 130,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[900],
                              padding: EdgeInsets.symmetric(vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
