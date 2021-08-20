import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpc_platform/admin/widgets/penyelisihan_soal_admin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPenyelisihan extends StatefulWidget {
  const InputPenyelisihan({Key? key}) : super(key: key);

  @override
  _InputPenyelisihanState createState() => _InputPenyelisihanState();
}

class _InputPenyelisihanState extends State<InputPenyelisihan> {
  TextEditingController idC = TextEditingController();
  TextEditingController namaC = TextEditingController();
  TextEditingController jmlPoinC = TextEditingController();
  TextEditingController soalC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    CollectionReference users = firestore.collection('penyelisihan');

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
                    'Pekan IT',
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
                          Text('ID / Urutan'),
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
                                hintText: 'contoh : A',
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 14.0, color: Colors.grey[600]),
                                filled: true,
                                fillColor: Colors.grey[100]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('Nama Soal'),
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
                                hintText: 'nama soal',
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
                            controller: jmlPoinC,
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
                            height: 15,
                          ),
                          Text('Konten Soal'),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: soalC,
                            maxLines: 5,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: 'isi string url',
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
                                'title': namaC.text,
                                'sub': jmlPoinC.text,
                                'soal': soalC.text,
                              });
                              idC.text = '';
                              namaC.text = '';
                              jmlPoinC.text = '';
                              soalC.text = '';

                              Get.snackbar('Success', 'Data berhasil diupload');
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
                              'Database Soal - Babak 1',
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
                        child: ListPenyelisihanAdmin(),
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
