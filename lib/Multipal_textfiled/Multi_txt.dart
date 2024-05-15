import 'package:flutter/material.dart';

class MuiltScreen extends StatefulWidget {
  const MuiltScreen({super.key});

  @override
  State<MuiltScreen> createState() => _MuiltScreenState();
}

class _MuiltScreenState extends State<MuiltScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'Dynamic Textfiled',
          style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
                txtControllerList.length,
                (index) => ListTile(
                      title: TextField(
                        controller: txtControllerList[index],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.purple),
                          ),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                              onTap: () {
                                TextEditingController txtcontroller =
                                    TextEditingController();
                                setState(() {
                                  txtControllerList.add(txtcontroller);
                                });
                              },
                              child: Icon(Icons.add_circle_outline_outlined)),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  txtControllerList.removeAt(index-1);
                                });
                              },
                              child: Icon(Icons.close))
                        ],
                      ),


                    )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          String skills=txtcontroller.text;
          setState(() {
            for(int i=0;i<txtControllerList.length;i++)
              {
                skills=skills+'\n'+txtControllerList[i].text;
              }
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${skills}")));
        },
        child: Text('Submit',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),)

    );
  }
}

TextEditingController txtcontroller = TextEditingController();
List txtControllerList = [
  txtcontroller,
];
