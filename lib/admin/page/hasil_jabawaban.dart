import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HasilPage extends StatefulWidget {
  const HasilPage({Key? key}) : super(key: key);

  @override
  _HasilPageState createState() => _HasilPageState();
}

class _HasilPageState extends State<HasilPage> {
  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 400,
                height: 400,
                child: Image.asset('assets/download.png'),
              ),
              Container(
                width: 400,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        title: Text('Download Hasil Babak 1'),
                        subtitle: Text('Penyelisihan'),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text('Download'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        title: Text('Download Hasil Babak 2'),
                        subtitle: Text('Final'),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text('Download'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
