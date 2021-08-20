import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPenyelisihanAdmin extends StatefulWidget {
  const ListPenyelisihanAdmin({Key? key}) : super(key: key);

  @override
  _ListPenyelisihanAdminState createState() => _ListPenyelisihanAdminState();
}

class _ListPenyelisihanAdminState extends State<ListPenyelisihanAdmin> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    CollectionReference users = firestore.collection('penyelisihan');

    return SafeArea(
      child: StreamBuilder<QuerySnapshot>(
        stream: users.snapshots(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (_, index) {
                DocumentSnapshot data = snapshot.data!.docs[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Text(
                      data['id'],
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      data['title'],
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(data['sub']),
                    trailing: InkWell(
                      onTap: () {
                        Get.defaultDialog(
                          title: 'Delete Data ?',
                          confirm: ElevatedButton(
                            onPressed: () {
                              users.doc(data.id).delete();
                              Get.back();
                              Get.snackbar('Success', 'Data berhasil hapus!');
                            },
                            child: Text('Delete'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[900],
                            ),
                          ),
                          cancel: ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('Cancel'),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                          ),
                        );
                      },
                      onHover: (_) {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[900]),
                        child: Text(
                          'Delete',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
