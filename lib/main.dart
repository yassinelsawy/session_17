import 'package:flutter/material.dart';
import 'package:session17/screen/ui/tune_app_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneAppScreen(),
    );
  }
}


