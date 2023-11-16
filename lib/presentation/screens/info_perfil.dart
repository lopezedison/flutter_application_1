// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/file_storage.dart';
import 'package:flutter_application_1/presentation/screens/foto_perfil.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class InfoPerfil extends StatefulWidget {
  InfoPerfil({Key? key}) : super(key: key);
  final FileStorage fileStorageExample = FileStorage();
  @override
  // ignore: library_private_types_in_public_api
  _InfoPerfilState createState() => _InfoPerfilState();
}

class _InfoPerfilState extends State<InfoPerfil> {
  File? _image; // Variable para almacenar la imagen seleccionada

  //Abrir la cámara y tomar una foto
  Future<void> _takePicture() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

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

  Future<void> _saveImage(File image) async {
    final appDocumentsDir = await getApplicationDocumentsDirectory();

    // Renombrar la foto existente a "perfil1.png" si existe
    final String existingPath = '${appDocumentsDir.path}/fotoperfil_actual.png';
    final File existingImage = File(existingPath);

    if (await existingImage.exists()) {
      try {
        await existingImage.rename('${appDocumentsDir.path}/perfil1.png');
      } catch (e) {
        print('Error al renombrar el archivo existente: $e');
      }
    }

    // Guardar la nueva imagen en el directorio de documentos
    fotoperfilvariable = '${appDocumentsDir.path}/fotoperfil_actual.png';
    print(fotoperfilvariable);
    final File newPerfil = await image.copy(fotoperfilvariable);
  }

  //Seleccionar una imagen de la galería
  Future<void> _pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información de usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _image == null
                ? Image.asset(
                    fotoperfilvariable,
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    _image!,
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
            ElevatedButton(
              onPressed: () {
                // Mostrar un diálogo para elegir entre tomar una foto o seleccionar de la galería
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Cambiar Imagen'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _takePicture();
                          //Navigator.push(
                          //  context,
                          //  MaterialPageRoute(
                          //      builder: (context) => const CameraScreen()),
                          //);
                        },
                        child: const Text('Tomar Foto'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _pickImage();
                        },
                        child: const Text('Seleccionar de Galería'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Cambiar Imagen'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Nombre Completo"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Correo"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Identificación"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "contraseña"),
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: "confirmacion contraseña"),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Agrega aquí la lógica para guardar la información del usuario
                  },
                  child: const Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'),
                ),
              ],
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
