import 'package:flutter/material.dart';

class InfoPerfil extends StatelessWidget {
  const InfoPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacion de usuario'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(
              'https://static-00.iconduck.com/assets.00/user-icon-2048x2048-ihoxz4vq.png',
              width: 140.0,
              height: 140.0,
              fit: BoxFit.cover,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 10.0),
                textStyle: const TextStyle(fontSize: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Button border radius
                ),
              ),
              child: const Text('Cambiar Imagen'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Nombre Completo"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Correo"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "edad"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "usuario"),
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
                  onPressed: () {},
                  child: const Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InfoPerfil()),
                    );
                  },
                  child: const Text('Cancelar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
