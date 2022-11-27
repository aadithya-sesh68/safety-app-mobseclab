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
      body: SingleChildScrollView(
        child: Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "Get there safe and sound!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.bold,
                          fontSize: 31.0,
                          color: Colors.black
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Text(
                      "Type the address of your destination",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.normal,
                          fontSize: 21.0,
                          color: Colors.grey[700]
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter address',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                        //onChanged: (val) => mobno = val,
                      )
                  ),
                  SizedBox(height: 15),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/enroutedest');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => VerificationScreen(mobilenumber: mobno,),
                      //     ));
                    },
                    icon: Icon(Icons.travel_explore_outlined),
                    label: Text(
                      "Start Travel",
                      style: GoogleFonts.urbanist(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: StadiumBorder(),
                        minimumSize: const Size(230, 45),
                        maximumSize: const Size(230, 45),
                        side: BorderSide(width: 2.0, color: Colors.black54)
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
