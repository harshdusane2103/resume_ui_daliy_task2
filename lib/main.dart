import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_ui_daliy_task/Snack/snack.dart';
import 'package:resume_ui_daliy_task/utils/gobal.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:snackScreen(),
    );
  }
}



// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//    statusBarColor: Colors.red
//  ));
//  SystemChrome.setPreferredOrientations(
//      [
//    DeviceOrientation.portraitDown,
//  DeviceOrientation.portraitUp,
//  ]);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: Approutes.routes,
//     );
//   }
// }
