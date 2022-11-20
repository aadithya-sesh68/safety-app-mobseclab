import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MySafeLoc - Safety App!'),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            print("Number sent to Verification");
          },
          icon: Icon(Icons.message_rounded),
          label: Text("Verify"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: StadiumBorder(),
            minimumSize: const Size(200, 50),
            maximumSize: const Size(200, 50),
            side: BorderSide(width: 3.0, color: Colors.black54)
          ),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: null,
        backgroundColor: Colors.cyan[600],
      ),
    );
  }
}