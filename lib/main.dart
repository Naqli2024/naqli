import 'package:flutter/material.dart';
import 'package:flutter_application_1/availableTruck.dart';
import 'package:flutter_application_1/confirmtrip.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/tripdetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: AvailabeTruckList());
  }
}
