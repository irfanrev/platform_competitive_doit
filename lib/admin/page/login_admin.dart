import 'package:cpc_platform/admin/page/dashboard_admin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({Key? key}) : super(key: key);

  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  final String user = 'admin@doit';
  final String passwd = 'Skills4future';

  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Masukan username dan password admin',
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
                controller: usernameC,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    suffixIcon: Icon(Icons.person),
                    hintText: 'username'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                controller: passwordC,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    suffixIcon: Icon(Icons.security),
                    hintText: 'password'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (usernameC.text == user && passwordC.text == passwd) {
                    Get.to(DashboardAmdin(), transition: Transition.fadeIn);
                    usernameC.text = '';
                    passwordC.text = '';
                  } else {
                    Get.snackbar('Error', 'Username atau password salah');
                    usernameC.text = '';
                    passwordC.text = '';
                  }
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
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
