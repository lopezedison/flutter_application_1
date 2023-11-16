import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:io';

class FileStorage extends StatelessWidget {
  FileStorage({super.key});
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  static String archivoParaCargar = '/ruta/de/ejemplo/archivo.txt';
  static String archivoParaDescargar = 'archivo.txt';

  Future<void> uploadFile(String filePath) async {
    try {
      File file = File(filePath);

      if (await file.exists()) {
        firebase_storage.Reference ref =
            storage.ref().child('archivos/${file.path.split('/').last}');

        await ref.putFile(file);

        print('Archivo cargado exitosamente');
      } else {
        print('El archivo no existe en la ruta proporcionada');
      }
    } catch (e) {
      print('Error al cargar el archivo: $e');
    }
  }

  Future<String?> downloadFile(String fileName) async {
    try {
      firebase_storage.Reference ref =
          storage.ref().child('archivos/$fileName');
      final String url = await ref.getDownloadURL();

      Dio dio = Dio();
      Response response = await dio.download(url, '/ruta/descargas/$fileName');

      if (response.statusCode == 200) {
        print('Archivo descargado exitosamente en ${response.data}');
        return response.data.toString();
      } else {
        print(
            'Error al descargar el archivo. Código de estado: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error al descargar el archivo: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Carga y Descarga de Archivos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => uploadFile(archivoParaCargar),
                child: const Text('Cargar Archivo'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => downloadFile(archivoParaDescargar),
                child: const Text('Descargar Archivo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
