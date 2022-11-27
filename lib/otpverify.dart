// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  late final String mobilenumber;
  //const VerificationScreen({Key? key}) : super(key: key);

  VerificationScreen({ required this.mobilenumber});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Image(
                    image: AssetImage('assets/otp.png'),
                    height: 220,
                    width: 220,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Verification Code",
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 18),
                  child: Text(
                    "Enter the OTP sent to +91 ${widget.mobilenumber}",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                        color: Colors.grey[700]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: SizedBox(
                    width: width,
                    child: Pinput(
                      length: 4,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      defaultPinTheme: PinTheme(
                        height: 50.0,
                        width: 50.0,
                        textStyle: GoogleFonts.urbanist(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                        ),
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(50.0),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                            width: 1.0,
                          )
                        )
                      ),
                      focusedPinTheme: PinTheme(
                          height: 50.0,
                          width: 50.0,
                          textStyle: GoogleFonts.urbanist(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(50.0),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.teal,
                                width: 1.2,
                              )
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {print("Hello");},
                    child: Text(
                      'Resend OTP',
                      style: GoogleFonts.urbanist(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "/addcontacts");
                  },
                  icon: Icon(Icons.message_rounded),
                  label: Text(
                      "Verify",
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
                      minimumSize: const Size(300, 50),
                      maximumSize: const Size(300, 50),
                      side: BorderSide(width: 2.0, color: Colors.black54)
                  ),)
              ],
            )
        ),
      ),
    );
  }
}
