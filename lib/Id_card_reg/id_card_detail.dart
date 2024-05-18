import 'package:flutter/material.dart';
import 'package:resume_ui_daliy_task/Id_card_reg/id_card.dart';


class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 811,
            width: 384,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asstes/images/bg.jpeg'),
              ),
            ),
            child:  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(


                children: <Widget>[
                  SizedBox(height:130,),
                  CircleAvatar(

                    radius: 60,

                    backgroundColor: Colors.yellow,
                    backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,

                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Center(
                        child: Text(
                          ' $name $surname',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'ID NO.  ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ' :$id',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'DOB    ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ' : $dob',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Text(
                        'Phone NO.  ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ' : $number',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Text(
                        'Gender  ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ' : $gender',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Text(
                        'Hobby  :',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ...List.generate(
                          skillList.length,
                              (index) => Text(
                            (index < skillList.length - 1)
                                ? skillList[index]
                                : '\n'+skillList[index],
                            style: TextStyle(color: Colors.black54,fontSize: 15),
                          ))
                    ],
                  ),

                ],
              ),
            ) ,
          ),


        ],
      ),
    );
  }
}
int selectindex=0;