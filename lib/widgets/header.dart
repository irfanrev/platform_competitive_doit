import 'package:cpc_platform/pages/login_page.dart';
import 'package:cpc_platform/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

class HeaderNav extends StatelessWidget {
  const HeaderNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 100),
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
              )
            ],
          ),

          /// NOTE: daftar dan login
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              HoverButton(
                onpressed: () {},
                //color: Color(0xffEDFAF3),
                hoverTextColor: Color(0xff33CC99),
                hoverColor: Color(0xffEDFAF3),
                child: Text(
                  'Tentang',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              HoverButton(
                onpressed: () {},
                //color: Color(0xffEDFAF3),
                hoverTextColor: Color(0xff33CC99),
                hoverColor: Color(0xffEDFAF3),
                child: Text(
                  'Berita',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              HoverButton(
                onpressed: () {},
                //color: Color(0xffEDFAF3),
                hoverTextColor: Color(0xff33CC99),
                hoverColor: Color(0xffEDFAF3),
                child: Text(
                  'Kontak',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              HoverButton(
                onpressed: () {},
                //color: Color(0xffEDFAF3),
                hoverTextColor: Color(0xff33CC99),
                hoverColor: Color(0xffEDFAF3),
                child: Text(
                  'Unduhan',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              InkWell(
                onTap: () {
                  Get.to(RegisterPage(), transition: Transition.fadeIn);
                },
                onHover: (value) {
                  print(value);
                },
                child: Image.asset(
                  'assets/daftar.png',
                  height: 38,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Get.to(LoginPage(), transition: Transition.fadeIn);
                },
                onHover: (value) {
                  print(value);
                },
                child: Image.asset(
                  'assets/btn-login.png',
                  height: 38,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
