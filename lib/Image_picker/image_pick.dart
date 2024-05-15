import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
ImagePicker imagePicker=ImagePicker();
File? fileImage;
class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}


class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle:true,
        title: Text('Image Picker',style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Container(

              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 2),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: (fileImage!=null)?DecorationImage(
                  fit:BoxFit.cover,
                    image: FileImage(fileImage!)):null,

              ),
            ),
          ),
          // CircleAvatar(
          //   radius: 50,
          //   backgroundColor: Colors.yellow,
          //   backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,
          // ),

          SizedBox(height: 50),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async {
                  XFile? xfileimage= await imagePicker.pickImage(source: ImageSource.camera);
                  setState(() {
                    fileImage=File(xfileimage!.path);
                  });


              }, icon: Icon(Icons.camera_alt_rounded,size: 65,),color: Colors.black,),
              IconButton(
                onPressed: ()  async {
                  XFile? xfileimage= await imagePicker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    fileImage=File(xfileimage!.path);
                  });

              }, icon: Icon(Icons.photo_rounded,size: 65,),color: Colors.black,),
            ],
          ),
          SizedBox(height: 50),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text('Upload Me',style: TextStyle(color: Colors.white,fontSize: 24),)),
          )
  
        ],
      ),

    );
  }
}
