import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PaginaDocumentos extends StatefulWidget {
  const PaginaDocumentos({Key? key}) : super(key: key);

  @override
  _PaginaDocumentosState createState() => _PaginaDocumentosState();
}

class _PaginaDocumentosState extends State<PaginaDocumentos> {
  Uint8List? fileBytes;
  String? pdfPath;

  @override
  Widget build(BuildContext context) {
    final double iconSizeButt = MediaQuery.of(context).size.width * 0.2;

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
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();

                        if (result != null) {
                          fileBytes = result.files.first.bytes;
                          String fileName = result.files.first.name!;
                          final storageRef =
                              firebase_storage.FirebaseStorage.instance
                                  .ref()
                                  .child('uploads/$fileName');
                          await storageRef.putData(fileBytes!);

                          final downloadURL =
                              await storageRef.getDownloadURL();

                          // Almacena la referencia del archivo en Firestore
                          await FirebaseFirestore.instance
                              .collection('uploads')
                              .add({'fileURL': downloadURL});

                          setState(() {
                            // Actualiza el estado del path del PDF
                            pdfPath = downloadURL;
                          });
                        }
                      } catch (e) {
                        print('Error seleccionando o mostrando PDF: $e');
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
              child: pdfPath != null
                  ? SfPdfViewer.network(
                      pdfPath!,
                    )
                  : const Center(
                      child: Text('No se seleccionó PDF'),
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
