import 'package:flutter/material.dart';
import 'package:resume_ui_daliy_task/utils/gobal.dart';

import '../utils/color.dart';

class passwordScreen extends StatefulWidget {
  const passwordScreen({super.key});

  @override
  State<passwordScreen> createState() => _passwordScreenState();
}
GlobalKey<FormState>formkey=GlobalKey();
TextEditingController txtpassword = TextEditingController();

class _passwordScreenState extends State<passwordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    padding: EdgeInsets.all(15),
                    height: 400,
                    width: 900,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                                height: 5,
                              ),
                              Image.asset(
                                'asstes/images/g.png',
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                width: 10,
                                height: 5,
                              ),
                              Text(
                                'Sing in',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                              ),
                              SizedBox(
                                width: 10,
                                height: 5,
                              ),
                              Text(
                                'Use your Google Account',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40, top: 80),
                          height: 300,
                          width: 450,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                validator: (value)
                                {
                                  if(value!.isEmpty)
                                    {
                                      return 'feild must be requried';
                                    }
                                  if(value!.length<=8)
                                    {
                                      return 'password must be 8 Chercter';
                                    }
                                },

                                obscureText: true,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.purple),
                                  ),
                                  prefixIcon: Icon(Icons.lock_outline_sharp),
                                  hintText: 'Password',
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Forget email?',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Not your computer?Use Guest mode to sing in privately .',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Learn more',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 200,
                                  ),
                                  Text(
                                    'Create account',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      bool res = formkey.currentState!.validate();
                                      if(res)
                                        {
                                          Navigator.of(context).pushNamed('/sucess');
                                        }
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: primarycolor),
                                      child: Center(
                                          child: Text(
                                        'submit',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
int check=0;