// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_autenticacion/login_pantalla.dart'; // Importa el archivo inicio_sesion.dart

void main() {
  testWidgets('Inicio de sesión UI test', (WidgetTester tester) async {
    
    await tester.pumpWidget(MaterialApp(
      home: InicioSesion(),
    ));

    final correoField = find.byType(TextField).first;
    final contrasenaField = find.byType(TextField).last;
    final iniciarSesionButton = find.text('Iniciar Sesión');
    final registrarseButton = find.text('Registrarse');

    await tester.enterText(correoField, 'correo@example.com');
    await tester.enterText(contrasenaField, 'contrasena123');

    await tester.tap(iniciarSesionButton);
    await tester.pump();

    expect(find.text('Pantalla de inicio'), findsOneWidget);
  });
}