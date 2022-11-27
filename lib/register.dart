// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otpverify.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String mobno;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : true,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('MySafeLoc - Safety Application!'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Image(
                      image: AssetImage('assets/safetyicon.png'),
                      height: 220,
                      width: 220,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Safety, you wouldn't want to compromise on it!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.black
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Text(
                      "Register yourself - Type your number below",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                          color: Colors.grey[700]
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter 10-digit mobile number',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (val) => mobno = val,
                      )
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      //Navigator.pushNamed(context, '/otpverify');
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerificationScreen(mobilenumber: mobno,),
                          ));
                    },
                    icon: Icon(Icons.phone),
                    label: Text("Register"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: StadiumBorder(),
                        minimumSize: const Size(300, 50),
                        maximumSize: const Size(300, 50),
                        side: BorderSide(width: 2.0, color: Colors.black54)
                    ),)
                ],
              ),
            )
        ),
      ),
    );
  }
}