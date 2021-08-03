import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                      'Irfan Maulana',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 65,
                      height: 65,
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
    );
  }
}
