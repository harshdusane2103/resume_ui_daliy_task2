import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:SystemUiOverlayStyle(
          statusBarColor: Colors.green,

        ),
        title:Text('harsh ',style:TextStyle(color: Colors.black)),
      ),
      body: Column(
         children: [
           Container(
             height: 723.2,
             width: 384,
             decoration: BoxDecoration(
               color: Colors.red
             ),
             child:Center(child:
             Text('My name Harsh Anilbhai dusane ,I am  a college student in BCA',style: TextStyle(color: Colors.white,fontSize: 24),))

           ),


         ],
      ),
    );
  }
}
