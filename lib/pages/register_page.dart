import 'package:cpc_platform/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'dashboard_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwdC = TextEditingController();
  TextEditingController repasswdC = TextEditingController();

  void registerSubmit() {
    Get.defaultDialog(
      titlePadding: EdgeInsets.all(15),
      radius: 10,
      title: 'Success',
      middleText: 'Register berhasil!',
      confirm: ElevatedButton(
        onPressed: () => Get.offAll(Dashboard(), transition: Transition.fadeIn),
        child: Text('Oke'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/ngoding.png',
                        height: 600,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 400,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Register',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Register menggunakan akun yang telah di daftarkan pada lomba Competitive Programming DoIT 5.0',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: emailC,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                suffixIcon: Icon(Icons.person),
                                hintText: 'email'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: passwdC,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                suffixIcon: Icon(Icons.security),
                                hintText: 'password'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: repasswdC,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                suffixIcon: Icon(Icons.security),
                                hintText: 'password'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: registerSubmit,
                            child: Text(
                              'Register',
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
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text('Sudah punya akun?'),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.to(LoginPage(),
                                      transition: Transition.fadeIn);
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.red,
                                ),
                                child: Text('Login'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
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
          Container(
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
          ),
        ],
      ),
    );
  }
}
