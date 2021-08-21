import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpc_platform/admin/widgets/rangking_admin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InputRating extends StatefulWidget {
  const InputRating({Key? key}) : super(key: key);

  @override
  _InputRatingState createState() => _InputRatingState();
}

class _InputRatingState extends State<InputRating> {
  TextEditingController idC = TextEditingController();
  TextEditingController namaC = TextEditingController();
  TextEditingController poinC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    CollectionReference users = firestore.collection('ranking');

    return Scaffold(
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
                  Text(
                    'Administrator',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.edit_rounded),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Input Soal',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text('Id / Peringkat'),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: idC,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: 'contoh : 1',
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 14.0, color: Colors.grey[600]),
                                filled: true,
                                fillColor: Colors.grey[100]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('Nama Tim'),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: namaC,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: 'contoh : suzuran',
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 14.0, color: Colors.grey[600]),
                                filled: true,
                                fillColor: Colors.grey[100]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('Jumlah Poin'),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: poinC,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: 'contoh : 100 poin',
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 14.0, color: Colors.grey[600]),
                                filled: true,
                                fillColor: Colors.grey[100]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              users.add({
                                'id': idC.text,
                                'poin': poinC.text,
                                'tim': namaC.text,
                              });

                              idC.text = '';
                              poinC.text = '';
                              namaC.text = '';

                              Get.snackbar('Success', 'Upload data berhasil!');
                            },
                            child: Text(
                              'Upload',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff33CC99),
                              shadowColor: Colors.grey,
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 50),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 600,
                        height: 50,
                        padding: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.task_rounded,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Database Rating Peserta',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 600,
                        height: 900,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ListRangkingAdmin(),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
