import 'package:flutter/material.dart';
class singupScreen extends StatefulWidget {
  const singupScreen({super.key});

  @override
  State<singupScreen> createState() => _singupScreenState();
}

class _singupScreenState extends State<singupScreen> {
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top:25,),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    // color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('asstes/images/banner.png'),
                      )
                  ),
                ),
                Text('Welcome Back ,',style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),),
                Text('Make it work , Make it right,Make it fast',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:1,color: Colors.black),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.purple),
                    ),
                    prefixIcon: Icon(Icons.person),

                    hintText: '  Username',
                  ),
                ),
                SizedBox(height: 5,),
                TextField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:1,color: Colors.black),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.purple),
                    ),
                    prefixIcon: Icon(Icons.mail),

                    hintText: '  E-Mail',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,

                  decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width:1,color: Colors.black),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width:2,color: Colors.purple),
                      ),
                      prefixIcon: Icon(Icons.fingerprint),


                      hintText: '  password',
                      suffixIcon: Icon(Icons.remove_red_eye_rounded)
                  ),
                ),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password?',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: 344,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(child: Text('Singup',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),

                ),
                SizedBox(height:15,
                  width: 10,),
                Center(child: Text('OR')),
                SizedBox(height: 10,),
                Container(
                    height: 50,
                    width: 344,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset('asstes/images/google.jpeg',height: 25,width: 25,),
                        ),
                        SizedBox(width: 3,),

                        Text('Singup with Google',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                      ],
                    )



                ),
                // SizedBox(height:10,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text('Don\'t have an Account?',style: TextStyle(color:
                //     Colors.black),),
                //     Text('Singup',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                //   ],
                // )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
