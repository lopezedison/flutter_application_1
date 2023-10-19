// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/principalContactos.dart';
import 'package:flutter_application_1/presentation/screens/principalWhatsApp.dart';
import 'package:flutter_application_1/presentation/screens/paginaActividades.dart';

class PaginaDocumentos extends StatelessWidget {
  const PaginaDocumentos({super.key});

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
        title: const Text('WhatsApp'),
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
            child: Container(
              color: const Color.fromARGB(
                  255, 255, 255, 255), // Color de fondo de la división central
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[],
                ),
              ),
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
                      'assets/icons/contactos2.png',
                      width: iconSizeButt,
                      height: iconSizeButt,
                    ),
                    iconSize: iconSizeButt,
                    onPressed: () {
                      // Acción para el botón 1
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrincipalContactos()),
                      );
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
                      'assets/icons/docs1.png',
                      width: iconSizeButt,
                      height: iconSizeButt,
                    ),
                    iconSize: iconSizeButt,
                    onPressed: () {
                      // Acción para el botón 4
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
