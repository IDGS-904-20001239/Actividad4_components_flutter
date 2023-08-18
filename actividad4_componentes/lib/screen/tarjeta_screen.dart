import 'package:flutter/material.dart';

import 'screen.dart';

class tarjetaScreen extends StatelessWidget {
   
  const tarjetaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      //Define la barra de aplicación
      appBar: AppBar(
        title: const Center(child: Text('Tarjetas')),
      ),
      //Establece el widget DawerWidget como el cajón lateral derecho de la pantalla.
      endDrawer: const DawerWidget(),
      body: (
        Text('Tarjeta Screen')
       ),
    );
  }
}