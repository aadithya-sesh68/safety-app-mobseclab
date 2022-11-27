// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'register.dart';
import 'otpverify.dart';
import 'addcontacts.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/addcontacts': (context) => AddContacts(),
  },
));



