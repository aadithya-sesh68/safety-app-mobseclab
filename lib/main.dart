// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safety_app/add_address.dart';
import 'package:safety_app/enroute_destination.dart';
import 'package:safety_app/set_traveltime.dart';
import 'register.dart';
import 'otpverify.dart';
import 'addcontacts.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/addcontacts': (context) => AddContacts(),
    '/setreachtime': (context) => SetTravelTime(),
    '/addaddress': (context) => AddAddress(),
    '/enroutedest': (context) => ReachDestination()
  },
));



