// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class InfoPerfil extends StatefulWidget {
  const InfoPerfil({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InfoPerfilState createState() => _InfoPerfilState();
}

class _InfoPerfilState extends State<InfoPerfil> {
  File? _image; // Variable para almacenar la imagen seleccionada

  //Abrir la cámara y tomar una foto
  Future<void> _takePicture() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
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
                    'assets/icons/userphoto-icon.png',
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
