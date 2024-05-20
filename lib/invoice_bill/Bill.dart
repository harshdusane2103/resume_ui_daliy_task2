import 'package:flutter/material.dart';
class Billscreen extends StatefulWidget {
  const Billscreen({super.key});

  @override
  State<Billscreen> createState() => _BillscreenState();
}

class _BillscreenState extends State<Billscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(onTap: () {
          TextEditingController txtname=TextEditingController();
          TextEditingController txtproname=TextEditingController();
          TextEditingController txtqty=TextEditingController();
          TextEditingController txtprice=TextEditingController();
          TextEditingController txtphone=TextEditingController();
          setState(() {
            name=txtname.text;
            proname=txtproname.text;
            qty=txtqty.text;
            price=txtprice.text;
            phone=txtphone.text;



          });
          Navigator.of(context).pop('/');
        },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: true,
        title: Text('Bill',style: TextStyle(color:
        Colors.white),),
        actions: [Icon(Icons.file_download_outlined,color: Colors.white,)],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 25,right: 25,top: 25),
              padding: EdgeInsets.all(10),
              height: 160,
              width: 300,
              child:Column(children: [
                box('Name',txtname),
                SizedBox(height: 5,),

                box('Phone NO',txtphone),
                
          ],)
            ),
           
            ... List.generate(productlist.length, (index) =>
            Center(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                height:260,
                width:300,
                color: Colors.white,
                child: Column(
                  children: [
                    InkWell(onTap:() {
                      setState(() {
                        productlist.removeAt(index);
                      });
                    },child: Align(
                        alignment:Alignment.centerRight,child: Icon(Icons.close))),
                    SizedBox(height: 5,),

                    SizedBox(height: 5,),
                    box('Product Name',productlist[index].proname!),
                    SizedBox(height: 5,),
                    box('Qunatiy',productlist[index].qty!),
                    SizedBox(height: 5,),
                    box('Price',productlist[index].price!),



                  ],
                ),
              ),
            )
            )],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          TextEditingController txtname=TextEditingController();
          TextEditingController txtproname=TextEditingController();
          TextEditingController txtqty=TextEditingController();
          TextEditingController txtprice=TextEditingController();
          setState(() {
            productlist.add(controllerModal(qty: txtqty,proname: txtproname,name: txtname,price: txtprice));
          });
        },
        child: Container(

          height: 40,
          width: 50,
          color: Colors.black,
          child: Center(child: Text('Add',style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }

  TextField box(String label,TextEditingController controller) {
    return TextField(
                controller: controller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 2, color: Colors.purple),
                  ),
          label: Text(label),
                ),

              );
  }
}
String? name='';
String? proname='';
String? qty='';
String? price='';
String? phone='';

class controllerModal
{
  TextEditingController? name;
  TextEditingController? proname;
  TextEditingController? qty;
  TextEditingController? price;
  TextEditingController? phone;
  controllerModal({this.name,this.price,this.proname,this.qty,});
}
List <controllerModal> productlist=[
  controllerModal(price: txtprice,proname: txtproname,name: txtname,qty: txtqty)
];
TextEditingController txtname=TextEditingController();
TextEditingController txtproname=TextEditingController();
TextEditingController txtqty=TextEditingController();
TextEditingController txtprice=TextEditingController();
TextEditingController txtphone=TextEditingController();
