import 'package:flutter/material.dart';
import 'package:resume_ui_daliy_task/utils/gobal.dart';
class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            color: Colors.green,
              child: Center(child: Text(email.toString(),style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),))),
        ],
      ),
    );
  }
}
