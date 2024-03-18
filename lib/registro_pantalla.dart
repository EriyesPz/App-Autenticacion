import 'package:flutter/material.dart';

class PantallaRegistro extends StatefulWidget {
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

    print('Nombre: $nombre');
    print('Correo: $correo');
    print('Teléfono: $telefono');
    print('Contraseña: $contrasena');
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
