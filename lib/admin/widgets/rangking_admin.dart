import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ListRangkingAdmin extends StatefulWidget {
  const ListRangkingAdmin({Key? key}) : super(key: key);

  @override
  _ListRangkingAdminState createState() => _ListRangkingAdminState();
}

class _ListRangkingAdminState extends State<ListRangkingAdmin> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('ranking');

    return StreamBuilder<QuerySnapshot>(
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
                margin: EdgeInsets.symmetric(vertical: 3.0),
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Text(
                    data['id'],
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                  ),
                  title: Text(
                    data['tim'],
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(data['poin']),
                  trailing: InkWell(
                    onTap: () {
                      Get.defaultDialog(
                        title: 'Delete Data ?',
                        confirm: ElevatedButton(
                          onPressed: () {
                            users.doc(data.id).delete();
                            Get.back();
                            Get.snackbar('Success', 'Hapus data berhasil!');
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
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Center(
                        child: Text(
                          'Delete',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.red[900],
                          ),
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
    );
  }
}
