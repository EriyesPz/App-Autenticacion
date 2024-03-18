// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'login_pantalla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InicioSesion()
    );
  }
}