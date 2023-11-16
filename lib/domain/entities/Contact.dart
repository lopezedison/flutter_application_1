import 'package:cloud_firestore/cloud_firestore.dart';

class Contact {
  String nombre;
  String numero;
  String correo;

  Contact(this.nombre, this.numero, this.correo);
}

class ContactManager {
  List<Contact> contactos = [];

  static final ContactManager _instance = ContactManager._internal();

  factory ContactManager() {
    return _instance;
  }

  ContactManager._internal();

  Future<void> obtenerContactosDesdeFirebase() async {
    CollectionReference contactosCollection =
        FirebaseFirestore.instance.collection('Users');

    QuerySnapshot querySnapshot = await contactosCollection.get();

    contactos = querySnapshot.docs.map((doc) {
      String nombre1 = doc['nombre'];
      String numero1 = doc['numero'];
      String correo1 = doc['correo'];
      return Contact(nombre1, numero1, correo1);
    }).toList();
    print("Contactos obtenidos correctamente:");
    for (Contact contacto in contactos) {
      print(
          "Nombre: ${contacto.nombre}, Número: ${contacto.numero}, Correo: ${contacto.correo}");
    }
  }
}

final contactManager = ContactManager();
