import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_ui_daliy_task/pdf_ui/invocie.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class pdfScreen extends StatefulWidget {
  const pdfScreen({super.key});

  @override
  State<pdfScreen> createState() => _pdfScreenState();
}

class _pdfScreenState extends State<pdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build:(format)=>
       genratePdf(),
      ),
    );
  }
}
