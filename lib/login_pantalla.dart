import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true, // Centra el título en la AppBar
      ),
      body: SingleChildScrollView( // Widget que permite desplazar el contenido si se desborda
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0),
              Image.asset(
                'assets/img/usuario.png', // Ajusta la ruta de la imagen según la ubicación de tu imagen
                height: 150.0,
              ),
              SizedBox(height: 40.0),
              Text(
                'Inicio de Sesión',
                textAlign: TextAlign.center, // Centra el texto
                style: TextStyle(
                  fontSize: 24.0, // Tamaño de fuente más grande
                  fontWeight: FontWeight.bold, // Texto en negrita
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                width: double.infinity, // Ancho máximo
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuario', // Cambiado de 'Correo' a 'Usuario'
                    prefixIcon: Icon(Icons.person), // Cambiado de Icons.email a Icons.person
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity, // Ancho máximo
                child: TextField(
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
                  // Aquí se debe implementar la lógica de validación de las credenciales
                  // Puedes usar una función para verificar los datos ingresados
                  // y navegar a la pantalla de inicio si son válidos
                },
                child: Text('Iniciar Sesión'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  // Aquí se debe implementar la navegación a la pantalla de registro
                  // Puedes usar el método Navigator.push para navegar a la pantalla de registro
                },
                child: Text('Registrarse', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
