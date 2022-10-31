import 'package:flutter/material.dart';
import 'package:gpl_teacher/apps/HOD/MyHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    String authority = "HOD";
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      // routes: (authority == "HOD")?{

      // }
      // :{},
    );
  }
}
