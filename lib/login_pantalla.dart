import 'package:flutter/material.dart';
import 'home_pantalla.dart';
import 'registro_pantalla.dart';
import 'env.dart';

class InicioSesion extends StatefulWidget {
  @override
  _InicioSesionState createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _iniciarSesion(BuildContext context) {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Buscar el usuario en la lista de credenciales
    var usuario = Credenciales.usuarios.firstWhere(
      (usuario) => usuario['email'] == email && usuario['contrasena'] == password,
      orElse: () => <String, String>{},
    );

    if (usuario.isNotEmpty) {
      String nombreUsuario = usuario['nombre'] ?? '';

      // Navegar a la pantalla de inicio y pasar el nombre de usuario como parámetro
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PantallaInicio(nombreUsuario: nombreUsuario)),
      );
      _passwordController.clear();
      _emailController.clear();
    } else {

      _passwordController.clear();
      _emailController.clear();
      // Mostrar diálogo de error
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Email o contraseña incorrecta.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cerrar el diálogo
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20.0),
            Image.asset(
              'assets/img/usuario.png',
              height: 150.0,
            ),
            SizedBox(height: 40.0),
            Text(
              'Inicio de Sesión',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              width: double.infinity,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _iniciarSesion(context);
              },
              child: Text('Iniciar Sesión'),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaRegistro(listaUsuarios: [])),
                );
              },
              child: Text('Registrarse', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
