// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/paginaActividades.dart';
import 'package:flutter_application_1/presentation/screens/paginaDocumentos.dart';
import 'package:flutter_application_1/presentation/screens/principalWhatsApp.dart';

class PrincipalContactos extends StatelessWidget {
  const PrincipalContactos({super.key});

  get screenHeight => null;
  get screenWidth => null;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    double iconSizeButt = screenWidth * 0.2;
    double iconSizePerf = screenWidth * 0.133;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 206, 251),
        title: const Text('Contactos'),
      ),
      body: Column(
        children: <Widget>[
          // División superior para botones de navegación
          Container(
            color: const Color.fromARGB(255, 151, 206, 251),
            height: 80,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/perfil1.png',
                      width: iconSizePerf,
                      height: iconSizePerf,
                    ),
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                  ),
                ],
              ),
            ),
          ),
          // División central para mostrar contenido
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/recientes.png',
                          width: screenWidth * 0.1,
                          height: screenWidth * 0.1,
                        ),
                        onPressed: () {
                          // Acción para el botón 1
                        },
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/libreta.png',
                          width: screenWidth * 0.1,
                          height: screenWidth * 0.1,
                        ),
                        onPressed: () {
                          // Acción para el botón 1
                        },
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        hintText: 'Buscar contactos',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  const ListTile(
                    title: Text('Contacto 1'),
                    subtitle: Text('Número de teléfono'),
                  ),
                  // Resto de los elementos de la lista
                ],
              ),
            ),
          ),
          Positioned(
            right: 70,
            bottom: 300,
            child: IconButton(
              icon: Image.asset(
                'assets/icons/tecladonum.png',
                width: screenWidth * 0.2,
                height: screenWidth * 0.2,
              ),
              iconSize: iconSizeButt,
              onPressed: () {
                // Aquí puedes mostrar un diálogo con un campo de entrada numérica
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Agregar Contacto'),
                      content: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {},
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Aquí puedes guardar el número de teléfono
                            // y añadirlo a la lista de contactos
                            Navigator.pop(context);
                          },
                          child: const Text('Guardar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancelar'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          // División inferior para botones de imagen
          Container(
            color: const Color.fromARGB(
                255, 255, 255, 255), // Color de fondo de la división inferior
            height: 100, // Altura de la división inferior
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Botón 1
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/contactos.png',
                      width: iconSizeButt,
                      height: iconSizeButt,
                    ),
                    iconSize: iconSizeButt,
                    onPressed: () {
                      // Acción para el botón 1
                    },
                  ),
                  // Botón 2
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/watsapp2.png',
                      width: iconSizeButt,
                      height: iconSizeButt,
                    ),
                    iconSize: iconSizeButt,
                    onPressed: () {
                      // Acción para el botón 2
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrincipalWhatsApp()),
                      );
                    },
                  ),
                  // Botón 3
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/seg2.png',
                      width: iconSizeButt,
                      height: iconSizeButt,
                    ),
                    onPressed: () {
                      // Acción para el botón 3
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaginaActividades()),
                      );
                    },
                  ),
                  // Botón 4
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/docs2.png',
                      width: iconSizeButt,
                      height: iconSizeButt,
                    ),
                    iconSize: iconSizeButt,
                    onPressed: () {
                      // Acción para el botón 4
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaginaDocumentos()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
