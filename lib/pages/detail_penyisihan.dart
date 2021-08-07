import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DetailPenyisihan extends StatefulWidget {
  const DetailPenyisihan({Key? key}) : super(key: key);

  @override
  _DetailPenyisihanState createState() => _DetailPenyisihanState();
}

class _DetailPenyisihanState extends State<DetailPenyisihan> {
  @override
  Widget build(BuildContext context) {
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
        preferredSize: Size.fromHeight(85),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                color: Colors.teal,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(200, 100, 200, 100),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text('data'),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: SfPdfViewer.network(
                            'http://www.africau.edu/images/default/sample.pdf')),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
