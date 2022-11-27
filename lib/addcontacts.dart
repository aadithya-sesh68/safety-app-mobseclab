// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AddContacts extends StatefulWidget {
  const AddContacts({Key? key}) : super(key: key);

  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : true,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('MySafeLoc - Safety Application'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Add Emergency Contacts",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("Contact added");
                    },
                    icon: Icon(Icons.message_rounded),
                    label: Text(
                      "Add Contact",
                      style: GoogleFonts.urbanist(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: StadiumBorder(),
                        minimumSize: const Size(250, 40),
                        maximumSize: const Size(250, 40),
                        side: BorderSide(width: 2.0, color: Colors.black54)
                    ),),
                )
              ],
            )
        ),
      ),
    );
  }
}
