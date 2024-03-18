// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
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
                  
                },
                child: Text('Iniciar Sesión'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                 
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
