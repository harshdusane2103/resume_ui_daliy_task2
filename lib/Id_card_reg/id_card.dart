import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
GlobalKey<FormState>formkey=GlobalKey();
ImagePicker imagePicker=ImagePicker();
File? fileImage;

TextEditingController txtsurname = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtid = TextEditingController();
TextEditingController txtdob = TextEditingController();
TextEditingController txtnumber = TextEditingController();
class IdScreen extends StatefulWidget {
  const IdScreen({super.key});

  @override
  State<IdScreen> createState() => _IdScreenState();
}

class _IdScreenState extends State<IdScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 30,),
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
                        left: 70,
                        bottom: 1,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green
                          ),
                          child: IconButton(
                            onPressed: ()  async {
                              XFile? xfileimage= await imagePicker.pickImage(source: ImageSource.gallery);
                              setState(() {
                                fileImage=File(xfileimage!.path);
                              });

                            }, icon: Icon(Icons.camera_alt_rounded,size:15,),color: Colors.black,),
                        ),
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 10,),
             TextField(
               controller: txtname,
               decoration: InputDecoration(

                 enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(width: 1, color: Colors.black),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(width: 2, color: Colors.purple),
                 ),
                 label: Text('First Name'),

               ),
             ),
                SizedBox(height: 10,),
             TextField(
               controller: txtsurname,
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(width: 1, color: Colors.black),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(width: 2, color: Colors.purple),
                 ),
                 label: Text(' SurName'),
               ),
             ),
                SizedBox(height: 10,),
                TextField(
                  controller: txtid,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2, color: Colors.purple),
                    ),
                    label: Text(' ID NO'),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
            controller: txtdob,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2, color: Colors.purple),
                    ),
                    label: Text(' DOB'),
                    hintText: 'DD/MM/YYYY',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txtnumber,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2, color: Colors.purple),
                    ),
                    label: Text('Phone NO.'),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Radio(

                        value: 'male', groupValue: gender, onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                    Text('Male'),
                    Radio(

                        value: 'female', groupValue: gender, onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                    Text('Female'),
                    Radio(

                      value: 'others', groupValue: gender, onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },),
                    Text('Others'),
                  ],
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hobby',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ...List.generate(skillList.length, (index) =>
                    CheckboxListTile(

                      value: varList[index], onChanged: (value) {
                      setState(() {
                        varList[index] = value!;
                      });
                    },  title: Text(skillList[index]),
                    ),
                ),
                ElevatedButton(onPressed: () {
                  surname = txtsurname.text;
                  number = txtnumber.text;
                  name = txtname.text;
                  dob =txtdob.text;

                  id=txtid.text;
                  Navigator.of(context).pushNamed('/det');
                }, child:Text('Submit'))

                  ],
                ),
          ),
        ),
      )


    );
  }
}
String gender = 'male';
List varList = [false,false,false,false];
List skillList = ['C Language','CPP Language','Dart','Flutter'];
String skill = "";
String? name;
String? surname;
String? id;
String? dob;
String? number;