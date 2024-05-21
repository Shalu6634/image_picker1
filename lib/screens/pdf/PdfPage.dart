import 'package:flutter/material.dart';
import 'package:image_picker1/screens/pdf/InvoiceScreen.dart';
import 'package:printing/printing.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'pdf',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue
        ),
        child: PdfPreview(
          build: (format) => generatePdf(),
        ),
      ),
    );
  }
}
