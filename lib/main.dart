import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/infoPerfil.dart';
import 'package:flutter_application_1/presentation/screens/principalContactos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrincipalContactos()),
                    );
                  },
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

class ModeloBase extends StatelessWidget {
  const ModeloBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // División superior para botones de navegación
          Container(
            color: Colors.blue, // Color de fondo de la división superior
            height: 80, // Altura de la división superior
            child: const Center(
              child: Text('Contenido superior'),
            ),
          ),
          // División central para mostrar contenido
          Expanded(
            child: Container(
              color: Colors.green, // Color de fondo de la división central
              child: const Center(
                child: Text('Contenido del centro'),
              ),
            ),
          ),
          // División inferior para botones de imagen
          Container(
            color: Colors.red, // Color de fondo de la división inferior
            height: 100, // Altura de la división inferior
            child: const Center(
              child: Text('Contenido inferior'),
            ),
          ),
        ],
      ),
    );
  }
}
