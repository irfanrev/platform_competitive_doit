import 'package:cpc_platform/controllers/auth_controller.dart';
import 'package:cpc_platform/pages/final_page.dart';
import 'package:cpc_platform/pages/landing_page.dart';
import 'package:cpc_platform/pages/penyelisihan_page.dart';
import 'package:cpc_platform/widgets/ranking.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  UserCredential userCredential;
  Dashboard({required this.userCredential});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: 85,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.teal),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Selamat datang',
                            style: GoogleFonts.poppins(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Irfan Maulana',
                            style: GoogleFonts.poppins(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Selamat berlomba dan tetap semangat!',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.teal),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  'Competitive Programming Competition - DoIT 5.0'),
                              InkWell(
                                onTap: authC.onLogout,
                                child: Container(
                                  height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 13),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      'Logout',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.task_rounded,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Submission',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 25),
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[200],
                                      ),
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                              'Babak Penyelisihan',
                                              style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            subtitle: Text(
                                              'Pada babak ini akan diberikan 10 soal',
                                              style: GoogleFonts.poppins(),
                                            ),
                                            trailing: InkWell(
                                              onTap: () {
                                                Get.to(Penyelisihan(),
                                                    transition:
                                                        Transition.fadeIn);
                                              },
                                              onHover: (_) {},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 8),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.green),
                                                child: Text(
                                                  'Kerjakan',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 16),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Status : ',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                                Text(
                                                  'Belum selesai',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 25),
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[200],
                                      ),
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                              'Babak Final',
                                              style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            subtitle: Text(
                                              'Pada babak ini akan diberikan 10 soal',
                                              style: GoogleFonts.poppins(),
                                            ),
                                            trailing: InkWell(
                                              onTap: () {
                                                Get.to(Final(),
                                                    transition:
                                                        Transition.fadeIn);
                                              },
                                              onHover: (_) {},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 8),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.green),
                                                child: Text(
                                                  'Kerjakan',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 16),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Status : ',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                                Text(
                                                  'Belum selesai',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 400,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.trending_up_rounded,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Top Ratings',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              width: 400,
                              height: 400,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Ranking(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
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
                      Text(
                        'Powered by DoIT 5.0  ',
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            ///Header
            Container(
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
                        'Irfan Maulana',
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
                            image: AssetImage('assets/ngoding.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
