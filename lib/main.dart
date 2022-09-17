import 'package:first/BmiCalc.dart';
import 'package:first/BmiResult.dart';
import 'package:first/CounterScreen.dart';
import 'package:first/LoginScreen.dart';
import 'package:first/MessengerScreen.dart';
import 'package:first/StoreScreen.dart';
import 'package:first/UsersScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:BmiCalc(),
    );
  }
}