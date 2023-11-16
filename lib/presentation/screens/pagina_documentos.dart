import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PaginaDocumentos extends StatelessWidget {
  const PaginaDocumentos({super.key});

  @override
  Widget build(BuildContext context) {
    final double iconSizeButt = MediaQuery.of(context).size.width * 0.2;
    String pdfPath = '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 206, 251),
        title: const Text('Documentos'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 151, 206, 251),
            height: 80,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/docs1.png',
                      width: iconSizeButt,
                      height: iconSizeButt,
                    ),
                    iconSize: iconSizeButt,
                    onPressed: () async {
                      try {
                        FilePickerResult? result = await FilePicker.platform
                            .pickFiles(
                                type: FileType.custom,
                                allowedExtensions: ['pdf']);

                        if (result != null) {
                          pdfPath = result.files.single.path!;
                          // ignore: use_build_context_synchronously
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PDFViewer(pdfPath: pdfPath),
                            ),
                          );
                        }
                      } catch (e) {
                        print('Error selecting or displaying PDF: $e');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: pdfPath.isNotEmpty
                  ? PDFView(
                      filePath: pdfPath,
                    )
                  : const Center(
                      child: Text('No PDF selected'),
                    ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            height: 100,
            child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PDFViewer extends StatelessWidget {
  final String pdfPath;

  const PDFViewer({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: pdfPath,
      ),
    );
  }
}
