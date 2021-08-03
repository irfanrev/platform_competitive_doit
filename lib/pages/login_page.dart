import 'package:cpc_platform/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwdC = TextEditingController();

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
                            'Login',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Silahkan login menggunakan email yang sudah didaftarkan',
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
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.to(Dashboard(),
                                  transition: Transition.fadeIn);
                            },
                            child: Text(
                              'Login',
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
                              Text('Belum punya akun?'),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    primary: Colors.red,
                                  ),
                                  child: Text('Daftar Sekarang'))
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
              )
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
                  'Pekan IT',
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
