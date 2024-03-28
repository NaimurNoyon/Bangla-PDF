/*
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PdfScreen(),
    );
  }
}

class PdfScreen extends StatelessWidget {
  Future<void> _generateAndSavePDF() async {
    // Create a PDF document
    final pdf = pw.Document();

    // Load the Bangla font
    final font = await rootBundle.load("assets/fonts/BanglaFont.ttf");

    // Add a page to the PDF document
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          // Return a centered Bangla text widget
          return pw.Center(
            child: pw.Text(
              'আমার সোনার বাংলা গানটি রচিত হয়েছিল ১৯০৫ সালের বঙ্গভঙ্গ আন্দোলনের পরিপ্রেক্ষিতে। গানটির পাণ্ডুলিপি পাওয়া যায়নি, তাই এর সঠিক রচনাকাল জানা যায় না',
              style: pw.TextStyle(font: pw.Font.ttf(font), fontSize: 20),
            ),
          );
        },
      ),
    );

    // Get the external storage directory
    final output = await getExternalStorageDirectory();

    // Create a File object for the PDF file
    final file = File('${output?.path}/example.pdf');

    // Write the PDF content to the file
    await file.writeAsBytes(await pdf.save());

    // Open the PDF file using the open_file package
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Generation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _generateAndSavePDF,
          child: Text('Generate PDF'),
        ),
      ),
    );
  }
}
*/
