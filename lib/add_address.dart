// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
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
      body: Center(
        child: Text(
          "Get there safe and sound!",
          style: GoogleFonts.urbanist(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.black
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
