import 'package:flutter/material.dart';

class JugadorScreen extends StatelessWidget {
   
  const JugadorScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     //Lista llamada jugador que contiene una serie de nombres de jugadores de fútbol.
   List<String> jugador=["Yairo", "Boselli", "Davila", "Burbano", "Loboa", "Rafael"];
   // contiene una barra de aplicación (appBar) y el cuerpo de la pantalla. 
    return Scaffold(
       //La barra de aplicación tiene un título centrado que muestra el texto "Listado".
      appBar: AppBar(title: const Center(child: Text("Listado"))),
      //Permite construir una lista eficientemente con elementos renderizados bajo demanda
      body: (ListView.builder(
        //Especifica la cantidad de elementos que tendrá la lista
        itemCount: jugador.length,
        //Define cómo se construirá cada elemento de la lista.
        itemBuilder:(context,index){
        // return Text("Data $index");
        return ListTile(title: Text("Es ${jugador[index]}"));
      })),
    );
  }
}