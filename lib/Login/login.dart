import 'package:flutter/material.dart';
import 'package:resume_ui_daliy_task/Login/frist.dart';
import 'package:resume_ui_daliy_task/Login/second.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>logFristScreen(),
        '/log':(context)=>logSecondScreen(),
      },
    );
  }
}
