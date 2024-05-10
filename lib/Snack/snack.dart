import 'package:flutter/material.dart';

class snackScreen extends StatefulWidget {
  const snackScreen({super.key});

  @override
  State<snackScreen> createState() => _snackScreenState();
}

class _snackScreenState extends State<snackScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
            child: Text(
          'Snack Widget',
          style: TextStyle(color: Colors.white, fontSize: 28),
        )),
      ),
      body: Form(
        key: formkey,
        child: 
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:700,
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal,width: 2)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(

                          obscureText: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              prefixIcon: Icon(Icons.fingerprint),
                              hintText: '  password',
                              suffixIcon: Icon(Icons.remove_red_eye_rounded)),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Invalid Password!'),
                                  action: SnackBarAction(
                                    label: 'Retry',
                                    onPressed: () {
                                      formkey.currentState!.reset();
                                    },
                                  ),
                                ),
                              );
                            },
                            child: Text('Submit')),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
