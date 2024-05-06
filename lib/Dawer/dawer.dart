import 'package:flutter/material.dart';
import 'package:resume_ui_daliy_task/utils/gobal.dart';
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
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer:Drawer(

        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(child:Text('Gmail',style:TextStyle(color: Colors.red,fontSize: 24),),),
            
             ... List.generate(iconlist.length, (index) =>
                 ListTile(
          
             leading: Icon(iconlist[index]['icon']),
              title: Text(iconlist[index]['text']),
          
              tileColor: Colors.white,
          
            ),
          
             )
            ],
          ),
        ),

      ),
      appBar: AppBar(
        title:TextField(
          decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.black12),borderRadius: BorderRadius.circular(15)),
            suffixIcon: Icon(Icons.account_circle),
            suffixIconColor: Colors.purple,
            hintText: '      Search new mail',
          ),

        ),
      ),
      // body: Column(
      //   children: [
      //     Center(
      //       child: Container(
      //         height: 80,
      //         width: 280,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15),
      //           border: Border.all(color: Colors.black12,width: 2)
      //
      //         ),
      //         child: Row(
      //
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}


