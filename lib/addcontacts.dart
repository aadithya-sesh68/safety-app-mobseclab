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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
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
            Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.teal,
              child: Text('Display contacts & dustbin icon here'),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      //onChanged: (val) => print(val),
                    )
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add, color: Colors.black, size: 30),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.white, // <-- Button color
                    foregroundColor: Colors.teal, // <-- Splash color
                    side: BorderSide(width: 3.0, color: Colors.teal)
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/setreachtime');
                },
                icon: Icon(Icons.navigate_next),
                label: Text(
                  "Proceed",
                  style: GoogleFonts.urbanist(
                    fontSize: 19.0,
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
        ),
      ),
    );
  }
}
