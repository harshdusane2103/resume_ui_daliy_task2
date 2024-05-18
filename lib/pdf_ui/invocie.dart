

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;


class invoiceScreen extends StatefulWidget {
  const invoiceScreen({super.key});

  @override
  State<invoiceScreen> createState() => _invoiceScreenState();
}

class _invoiceScreenState extends State<invoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Invocie Screen',style: TextStyle(color: Colors.white),),
        actions: [
          InkWell(onTap:() {
            Navigator.of(context).pushNamed('/pdf');
          },child: Icon(Icons.file_download_outlined,color: Colors.white,)),
        ],
      ),
      body: Column(
        children: [
          ... List.generate(invoicelist.length, (index) => ListTile(
            title: Text(invoicelist[index].name!,style: TextStyle(fontSize: 28),),
            subtitle: Text(invoicelist[index].price!,style: TextStyle(fontSize:26),),
            trailing: Text(invoicelist[index].category! ,style: TextStyle(fontSize:20),),
          )),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            invoicelist.add(InvoiceModel(name: 'vivo',price: '14,500',category: 'Mobile-y21')
            );
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
List invoicelist=[

  InvoiceModel(name: 'Oppo',price: '10,500',category: 'Mobile-A30'),
  InvoiceModel(name: 'MI',price: '9,999',category: 'Mobile'),
  InvoiceModel(name: 'One +',price: '1,04,000',category: 'Mobile-Note11'),
  InvoiceModel(name: 'Apple Iphone',price: '1,45,000',category: 'Mobile-15 Promax'),
];
class InvoiceModel
{
  String? name;
  String? price;
  String? category;
  InvoiceModel({this.name,this.price,this.category});
}


Future <Uint8List> genratePdf(){
  final pdf=pw.Document();
  pdf.addPage(
      pw.Page(
    pageFormat:PdfPageFormat.a4,
        build: (Context)=>pw.Column(
          children: List.generate(invoicelist.length, (index) => pw.Text('${invoicelist[index].name!},  ${invoicelist[index].price!}   ${invoicelist[index].category!}\n\n\n'),)
        )

  ));return pdf.save();
}