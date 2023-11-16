// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _image;
  _CameraScreenState() {
    _getImageFromCamera();
  }
  Future _getImageFromCamera() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });

      // Mostrar un diálogo con opciones de tomar de nuevo o elegir la foto
      // ignore: use_build_context_synchronously
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('¿Qué deseas hacer?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cerrar el diálogo
                },
                child: const Text('Tomar de nuevo'),
              ),
              TextButton(
                onPressed: () {
                  _saveImage(_image!);
                  Navigator.of(context).pop(); // Cerrar el diálogo
                },
                child: const Text('Elegir esta'),
              ),
            ],
          );
        },
      );
    }
  }

  // Función para guardar la imagen con el nombre especificado
  Future<void> _saveImage(File image) async {
    // Renombrar la foto existente a "perfil1.png" si existe
    const String existingPath = 'assets/images/fotoperfil_actual.png';
    final File existingImage = File(existingPath);

    if (await existingImage.exists()) {
      await existingImage.rename('assets/images/perfil1.png');
    }

    // Guardar la nueva imagen como "foto_perfil_actual.png"
    const String newPath = 'assets/images/fotoperfil_actual.png';
    final File newPerfil = await image.copy(newPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera Example'),
      ),
      body: Center(
        child: _image == null
            ? const Text('No has tomado ninguna foto.')
            : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImageFromCamera,
        tooltip: 'Tomar Foto',
        child: const Icon(Icons.camera),
      ),
    );
  }
}
