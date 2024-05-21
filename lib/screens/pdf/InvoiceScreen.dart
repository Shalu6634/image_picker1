
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('/pdf');
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.picture_as_pdf_outlined,
                  size: 24,
                ),
              )),
        ],
        backgroundColor: Colors.white,
        elevation: 8,
        centerTitle: true,
        title: const Text(
          'InvoiceScreen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ...List.generate(
            invoiceList.length,
            (index) => ListTile(
              title: Text(
                invoiceList[index].name!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(invoiceList[index].category!),
              trailing: Text(
                invoiceList[index].price!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            invoiceList.add(
              InvoiceModel(category: 'laptop', name: 'hp', price: '42500'),
            );
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List<InvoiceModel> invoiceList = [
  InvoiceModel(name: 'dell', price: '45000', category: 'laptop'),
  InvoiceModel(name: 'hp', price: '48000', category: 'laptop'),
  InvoiceModel(name: 'iphone', price: '50000', category: 'phone'),
  InvoiceModel(name: 'Lenovo', price: '40000', category: 'laptop'),
  InvoiceModel(name: 'Vivo', price: '3000', category: 'phone'),
  InvoiceModel(name: 'hp', price: '45000', category: 'laptop'),
];

class InvoiceModel {
  String? name;
  String? price;
  String? category;

  InvoiceModel({this.name, this.price, this.category});
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) =>pw.Row(
        children:
          [
            pw.Column(
              mainAxisAlignment:pw.MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  invoiceList.length,
                      (index) => pw.Text(
                    '${invoiceList[index].name}\t\t\t\t\t',
                    style: pw.TextStyle(fontSize: 30),),),
              ],
            ),
            pw.SizedBox(width: 90),
            pw.Column(
              mainAxisAlignment:pw.MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  invoiceList.length,
                      (index) => pw.Text(
                    '${invoiceList[index].price}\t\t\t\t',
                    style: pw.TextStyle(fontSize: 30),),),
              ],
            ),
            pw.SizedBox(width: 90,),
            pw.Column(
              mainAxisAlignment:pw.MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  invoiceList.length,
                      (index) => pw.Text(
                    '${invoiceList[index].category}',
                    style: pw.TextStyle(fontSize: 30),),),
              ],
            ),

          ]
      )
    ),
  );
  return pdf.save();
}
