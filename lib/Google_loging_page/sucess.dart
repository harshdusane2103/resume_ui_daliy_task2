import 'package:flutter/material.dart';
class sucessScreen extends StatefulWidget {
  const sucessScreen({super.key});

  @override
  State<sucessScreen> createState() => _sucessScreenState();
}

class _sucessScreenState extends State<sucessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200,left:60),
              padding: EdgeInsets.all(15),
              height: 400,
              width: 900,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(

                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:  AssetImage(
                          'asstes/images/g.png',

                        ),
                      ),

                    ),
                  ),
                  SizedBox(height:18,),
                  Text('Gmail Account  Create ',style: TextStyle(color: Colors.black,fontSize:32,fontWeight: FontWeight.bold),),
                  SizedBox(height:5,),
                  Text('Sucessflly',style: TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.bold),),
                  Container(
                    height:180,
                    width: 180,
                    child:Image.asset('asstes/images/rr.png') ,
                    ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
