import 'package:flutter/material.dart';

class RadioCheckScreen extends StatefulWidget {
  const RadioCheckScreen({super.key});

  @override
  State<RadioCheckScreen> createState() => _RadioCheckScreenState();
}

class _RadioCheckScreenState extends State<RadioCheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio & Chekbox'),
      ),

      body: Column(
        children: [
          RadioListTile(
              title: Text('Male'),
              value: 'male', groupValue: gender, onChanged: (value) {
            setState(() {
              gender = value!;
            });
          }),
          RadioListTile(
              title: Text('Female'),
              value: 'female', groupValue: gender, onChanged: (value) {
            setState(() {
              gender = value!;
            });
          }),
          RadioListTile(
            title: Text('Others'),
            value: 'others', groupValue: gender, onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },),

          ...List.generate(skillList.length, (index) =>
          CheckboxListTile(
            title: Text(skillList[index]),
            value: varList[index], onChanged: (value) {
            setState(() {
             varList[index] = value!;
            });
          },),),

        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          IconButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(gender)));
          }, icon: Icon(Icons.radio_button_checked)),
          IconButton(onPressed: () {



            setState(() {

              for(int i=0; i<skillList.length; i++)
              {
                if(varList[i]==true)
                {
                  skill = skill + " " + skillList[i];
                }

                print(varList);
                print(skillList);
              }

            });

            print(skill);

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(skill),));
            skill = "";
          }, icon: Icon(Icons.check_box))

        ],
      ),
    );
  }
}

// skills selection
// bool isC = false;
// bool isCPP = false;
// bool isDart = false;
// bool isFlutter = false;

List varList = [false,false,false,false];
List skillList = ['C Language','CPP Language','Dart','Flutter'];
String skill = "";

String gender = 'male';
// gender selection
// male
// female
// others

// radio - single choice from multiple options
// checkbox - multiple choice from multiple option
