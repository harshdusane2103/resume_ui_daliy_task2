import 'package:flutter/material.dart';
import 'package:resume_ui_daliy_task/Google_loging_page/detail.dart';
import 'package:resume_ui_daliy_task/Google_loging_page/email.dart';
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
        '/':(context)=>homeFristScreen(),
        '/det':(context)=>detailScreen(),
      },
    );
  }
}
