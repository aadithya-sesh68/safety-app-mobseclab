// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ReachDestination extends StatefulWidget {
  const ReachDestination({Key? key}) : super(key: key);

  @override
  State<ReachDestination> createState() => _ReachDestinationState();
}

class _ReachDestinationState extends State<ReachDestination> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(23),
                child: Text(
                  "En route to destination!",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                ),
              ),


            ],
          )
      ),
    );
  }
}
