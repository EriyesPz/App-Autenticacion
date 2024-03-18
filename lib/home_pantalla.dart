import 'package:flutter/material.dart';
import 'login_pantalla.dart';

class PantallaInicio extends StatelessWidget {
  final String nombreUsuario;

  PantallaInicio({required this.nombreUsuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle, // Icono de usuario
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              '¡Bienvenido, $nombreUsuario!', // Concatena el nombre de usuario con el mensaje de bienvenida
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InicioSesion()),
                );
              },
              child: Text('Cerrar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}