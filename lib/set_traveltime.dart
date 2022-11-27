// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SetTravelTime extends StatefulWidget {
  const SetTravelTime({Key? key}) : super(key: key);

  @override
  State<SetTravelTime> createState() => _SetTravelTimeState();
}

class _SetTravelTimeState extends State<SetTravelTime> {

  TimeOfDay time = TimeOfDay(hour: 11, minute: 35);

  @override
  Widget build(BuildContext context) {

    final hours = time.hour.toString().padLeft(2,'0');
    final minutes = time.minute.toString().padLeft(2,'0');

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
                  "Set the potential time you would take to reach the destination",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(35),
                child: Text(
                  '$hours:$minutes',
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.normal,
                      fontSize: 66.0,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: time,
                  );

                  // if 'CANCEL' => null
                  if (newTime == null) return;

                  //if 'OK' => TimeOfDay
                  setState(() {
                    time = newTime;
                  });
                },
                icon: Icon(Icons.more_time),
                label: Text(
                    "Select Time",
                  style: GoogleFonts.urbanist(
                    fontSize: 21.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: StadiumBorder(),
                    minimumSize: const Size(250, 42),
                    maximumSize: const Size(250, 42),
                    side: BorderSide(width: 2.0, color: Colors.black54)
                ),)
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addaddress");
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
