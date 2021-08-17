import 'package:flutter/material.dart';

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
                            HoverButton(
                              onpressed: () {},
                              enableFeedback: false,
                              hoverElevation: 8.0,
                              splashColor: Colors.grey,
                              animationDuration: Duration(milliseconds: 1),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Color(0xff33CC99),
                                    borderRadius: BorderRadius.circular(13)),
                                child: Text(
                                  'Daftar Sekarang',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
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
              ],
            ),

            ///NOTE: Header Navigation
            HeaderNav(),
          ],
        ));
  }
}
