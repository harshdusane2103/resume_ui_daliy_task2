import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_ui_daliy_task/Google_loging_page/detail.dart';
import 'package:resume_ui_daliy_task/Id_card_reg/id_card.dart';
import 'package:resume_ui_daliy_task/Id_card_reg/id_card_detail.dart';
import 'package:resume_ui_daliy_task/Image_picker/image_pick.dart';
import 'package:resume_ui_daliy_task/Multipal_textfiled/Multi_txt.dart';
import 'package:resume_ui_daliy_task/Snack/snack.dart';
import 'package:resume_ui_daliy_task/radio_check.dart';
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

   routes:
   {
        '/':(context)=>IdScreen(),
     '/det':(context)=>DetailScreen(),
   },
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
