class UserEntity {
  final String? id;
  final String numero;
  final String correo;
  final String nombre;

  UserEntity.named({
    this.id,
    required this.correo,
    required this.nombre,
    required this.numero,
  });

  toJson() {
    return {
      "Nombre": nombre,
      "Correo": correo,
      "Numero": numero,
    };
  }
}
