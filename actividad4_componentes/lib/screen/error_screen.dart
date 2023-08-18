import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //Define el cuerpo del Scaffold como un Center, 
      //que alinea su único hijo en el centro vertical y horizontal de la pantalla.
      body: Center(
        child: Text('Error 404'),
      ),
    );
  }
}
