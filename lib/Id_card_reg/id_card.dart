import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
ImagePicker imagePicker=ImagePicker();
File? fileImage;
class IdScreen extends StatefulWidget {
  const IdScreen({super.key});

  @override
  State<IdScreen> createState() => _IdScreenState();
}

class _IdScreenState extends State<IdScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(
            child: Stack(
              children: [
                SizedBox(width: 80,),
                CircleAvatar(

                  radius: 50,

                  backgroundColor: Colors.yellow,
                  backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,

                ),

                Positioned(
                  left:45,
                  bottom: 0,
                  child: 
                  Align(

                    child: IconButton(
                      onPressed: ()  async {
                        XFile? xfileimage= await imagePicker.pickImage(source: ImageSource.gallery);
                        setState(() {
                          fileImage=File(xfileimage!.path);
                        });

                      }, icon: Icon(Icons.add,size:35,),color: Colors.black,),
                  ),
                ),
              ],
            ),
          ),

            ],
          )


    );
  }
}
