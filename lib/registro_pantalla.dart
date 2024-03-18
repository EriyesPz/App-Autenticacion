import 'package:flutter/material.dart';

class Usuario {
  String nombre;
  String correo;
  String telefono;
  String contrasena;

  Usuario({required this.nombre, required this.correo, required this.telefono, required this.contrasena});
}

class PantallaRegistro extends StatefulWidget {
  final List<Usuario> listaUsuarios;

  PantallaRegistro({required this.listaUsuarios});

  @override
  _PantallaRegistroState createState() => _PantallaRegistroState();
}

class _PantallaRegistroState extends State<PantallaRegistro> {
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _correoController = TextEditingController();
  TextEditingController _telefonoController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();
  TextEditingController _confirmarContrasenaController = TextEditingController();

  void _registrarUsuario() {
    String nombre = _nombreController.text;
    String correo = _correoController.text;
    String telefono = _telefonoController.text;
    String contrasena = _contrasenaController.text;

    // Validar que las contraseñas coincidan
    if (contrasena == _confirmarContrasenaController.text) {
      // Crear un nuevo usuario
      Usuario nuevoUsuario = Usuario(nombre: nombre, correo: correo, telefono: telefono, contrasena: contrasena);
      
      // Agregar el nuevo usuario a la lista
      widget.listaUsuarios.add(nuevoUsuario);

      // Imprimir información del nuevo usuario
      print('Usuario registrado:');
      print('Nombre: ${nuevoUsuario.nombre}');
      print('Correo: ${nuevoUsuario.correo}');
      print('Teléfono: ${nuevoUsuario.telefono}');
      print('Contraseña: ${nuevoUsuario.contrasena}');
    } else {
      // Si las contraseñas no coinciden, mostrar un mensaje de error
      print('Error: Las contraseñas no coinciden');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _correoController,
              decoration: InputDecoration(
                labelText: 'Correo',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _telefonoController,
              decoration: InputDecoration(
                labelText: 'Teléfono',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _contrasenaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _confirmarContrasenaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirmar Contraseña',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _registrarUsuario,
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
