import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(220, 221, 235, 253)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Bienvenidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(
              'https://www.creativefabrica.com/wp-content/uploads/2019/03/Monogram-NH-Logo-Design-by-Greenlines-Studios.jpg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            const Text(
              'NexusHub Pro',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: "ingresa tu usuario"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "contraseña"),
            ),
            const SizedBox(
                height:
                    20.0), // Add some spacing between TextFormField and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Log In'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InfoPerfil()),
                    );
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
