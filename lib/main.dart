// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : true,
      appBar: AppBar(
        title: Text('MySafeLoc - Safety App'),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Image(
                  image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2345/2345547.png'),
                  height: 250,
                  width: 250,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Safety, you wouldn't want to compromise on it!",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Text(
                  "Register yourself - Type your number below",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 17.0),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter 10-digit mobile number',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onChanged: (value) {
                    print("Entering number changed");
                  },
                )
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  print("Number sent to Verification");
                },
                icon: Icon(Icons.message_rounded),
                label: Text("Verify"),
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