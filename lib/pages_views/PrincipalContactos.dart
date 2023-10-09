import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages_views/PaginaActividades.dart';
import 'package:flutter_application_1/pages_views/PaginaDocumentos.dart';
import 'package:flutter_application_1/pages_views/PrincipalWhatsApp.dart';

class PrincipalContactos extends StatelessWidget {
  const PrincipalContactos({super.key});

  get screenHeight => null;
  get screenWidth => null;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    double iconSizeButt = screenWidth * 0.2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 206, 251),
        title: const Text('Contactos'),
      ),
      body: Column(
        children: <Widget>[
          // División superior para botones de navegación
          Container(
            color: const Color.fromARGB(
                255, 151, 206, 251), // Color de fondo de la división superior
            height: 80, // Altura de la división superior
            child: const Center(),
          ),
          // División central para mostrar contenido
          Expanded(
            child: Container(
              color: const Color.fromARGB(
                  255, 255, 255, 255), // Color de fondo de la división central
              child: const Center(),
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
                      'lib/icons/contactos.png',
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
                      'lib/icons/watsapp2.png',
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
                      'lib/icons/seg2.png',
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
                      'lib/icons/docs2.png',
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
    );
  }
}
