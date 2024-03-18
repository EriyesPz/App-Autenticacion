// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_autenticacion/login_pantalla.dart'; // Importa el archivo inicio_sesion.dart

void main() {
  testWidgets('Inicio de sesión UI test', (WidgetTester tester) async {
    // Construir el widget de inicio de sesión
    await tester.pumpWidget(MaterialApp(
      home: InicioSesion(),
    ));

    // Encuentra los widgets en la pantalla
    final correoField = find.byType(TextField).first;
    final contrasenaField = find.byType(TextField).last;
    final iniciarSesionButton = find.text('Iniciar Sesión');
    final registrarseButton = find.text('Registrarse');

    // Ingresa texto en los campos de texto
    await tester.enterText(correoField, 'correo@example.com');
    await tester.enterText(contrasenaField, 'contrasena123');

    // Toca el botón de iniciar sesión y espera a que se complete la animación
    await tester.tap(iniciarSesionButton);
    await tester.pump();

    // Verifica que se haya navegado a la pantalla de inicio
    expect(find.text('Pantalla de inicio'), findsOneWidget);
  });
}
