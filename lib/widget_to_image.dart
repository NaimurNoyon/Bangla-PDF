/*
class PdfScreen extends StatefulWidget {
  @override
  _PdfScreenState createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  final GlobalKey globalKey = GlobalKey();

  Future<void> _generateAndSavePDF() async {
    RenderRepaintBoundary? boundary =
    globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary?;
    if (boundary != null) {
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List? pngBytes = byteData?.buffer.asUint8List();

      final output = await getExternalStorageDirectory();
      final file = File('${output?.path}/example.png'); // Use .png extension
      await file.writeAsBytes(pngBytes as List<int>);

      OpenFile.open(file.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Generation'),
      ),
      body: Center(
        child: RepaintBoundary(
          key: globalKey,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: Text(
              'আমার সোনার বাংলা গানটি রচিত হয়েছিল ১৯০৫ সালের বঙ্গভঙ্গ আন্দোলনের পরিপ্রেক্ষিতে। গানটির পাণ্ডুলিপি পাওয়া যায়নি, তাই এর সঠিক রচনাকাল জানা যায় না',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateAndSavePDF,
        child: Icon(Icons.save),
      ),
    );
  }
}*/