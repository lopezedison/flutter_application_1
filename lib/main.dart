import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/presentation/screens/info_perfil.dart';
import 'package:flutter_application_1/presentation/screens/principal_contactos.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initPathProvider();
  runApp(const MyApp());
}

Future<void> initPathProvider() async {
  WidgetsFlutterBinding.ensureInitialized();

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
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(220, 221, 235, 253)),
          useMaterial3: true,
        ),
        home: const Stack(
          children: [
            //agregar imagen de fondo
            MyHomePage(title: 'Flutter Demo Home Page'),
          ],
        ));
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
    double screenHeight = MediaQuery.of(context).size.height;
    double logoSize =
        screenHeight * 0.25; // Tamaño del logo: 20% del alto de la pantalla

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/logoprincipal.jpg',
              width: logoSize,
              height: logoSize,
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
                  const InputDecoration(labelText: "Ingresa tu usuario"),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Contraseña"),
              obscureText: true,
            ),
            const SizedBox(
                height:
                    20.0), // Agrega un espacio entre los campos de texto y los botones
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
                      MaterialPageRoute(builder: (context) => InfoPerfil()),
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
