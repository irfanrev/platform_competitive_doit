import 'dart:html' as html;

import 'package:cpc_platform/admin/page/login_admin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:cpc_platform/widgets/header.dart';
import 'package:hovering/hovering.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              physics: ScrollPhysics(),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        width: 600,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Color(0xffEDFAF3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Competitive Programming\nDoIT 5.0',
                              style: GoogleFonts.poppins(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Segera daftarkan Tim mu dan lengkapi data nmasing-masing anggota Tim serta selesaikan registrasinya.',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                html.window.location.href =
                                    "https://himtika.cs.unsika.ac.id/pekan-it/doit.php";
                              },
                              child: Container(
                                width: 300,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Center(
                                  child: Text(
                                    'Kunjungi Official Website DoIT 5.0',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff33CC99),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/coding.gif',
                        width: 550,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Divider(
                  color: Colors.black,
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '© HIMTIKA 2021',
                        style: GoogleFonts.poppins(),
                      ),
                      Row(
                        children: [
                          Text(
                            'Powered by DoIT 5.0  ',
                            style: GoogleFonts.poppins(),
                          ),
                          Text('|'),
                          TextButton(
                              onPressed: () {
                                Get.to(LoginAdmin(),
                                    transition: Transition.fadeIn);
                              },
                              child: Text('Admin'))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

            ///NOTE: Header Navigation
            HeaderNav(),
          ],
        ));
  }
}
