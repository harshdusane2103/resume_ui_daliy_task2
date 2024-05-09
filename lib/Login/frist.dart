import 'package:flutter/material.dart';
class logFristScreen extends StatefulWidget {
  const logFristScreen({super.key});

  @override
  State<logFristScreen> createState() => _logFristScreenState();
}

class _logFristScreenState extends State<logFristScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top:120),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('asstes/images/banner.png'),
                  )
                ),
              ),
              
      
            ),
            SizedBox(height: 100,),
            Column(
              children: [
                Text('Build Awesome Apps',style: TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.bold),),
                Text('let\'s put  your creativity on the',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
                Text('development highway',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
              ],
            ),
            SizedBox(height:50,),
            Row(
              children: [
                SizedBox(width:37,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/log');
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black,width: 2)
                    ),
                    child: Center(child: Text('LOGIN',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700),)),
                  ),
                ),
                SizedBox(width:10,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/sing');
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black,width: 2)
                    ),
                    child: Center(child: Text('SIGNUP',style: TextStyle(color: Colors.white),)),
                  ),
                ),
                SizedBox(width:37,),

              ],
            )
          ]
        ),
      ),
    );
  }
}
