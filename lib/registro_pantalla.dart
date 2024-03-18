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

  void _registrarUsuario(BuildContext context) {
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

      // Mostrar mensaje emergente
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Usuario registrado'),
            content: Text('El usuario $nombre ha sido registrado satisfactoriamente.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );

      // Limpiar los campos de texto después de registrar al usuario
      _nombreController.clear();
      _correoController.clear();
      _telefonoController.clear();
      _contrasenaController.clear();
      _confirmarContrasenaController.clear();

    } else {

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Datos incorrectos'),
            content: Text('No se ha podido registrar el usuario'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );

      // Si las contraseñas no coinciden, mostrar un mensaje de error
      print('Error: Las contraseñas no coinciden');_nombreController.clear();
      _correoController.clear();
      _telefonoController.clear();
      _contrasenaController.clear();
      _confirmarContrasenaController.clear();

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
              onPressed: () => _registrarUsuario(context),
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
