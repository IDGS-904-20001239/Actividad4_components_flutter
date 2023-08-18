import 'package:flutter/material.dart';

class EquipoScreen extends StatelessWidget {
   
  const EquipoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //Lista llamada equipo que contiene una serie de nombres de equipos de fútbol.
   List<String> equipo=["León", "Pachuca", "America", "Cruz Azul", "Boca Jr", "LAFC"];
   // contiene una barra de aplicación (appBar) y el cuerpo de la pantalla. 
    return Scaffold(
      //La barra de aplicación tiene un título centrado que muestra el texto "Listado".
      appBar: AppBar(title: const Center(child: Text("Listado"))),
      //Permite construir una lista eficientemente con elementos renderizados bajo demanda
      body: (ListView.builder(
        //Especifica la cantidad de elementos que tendrá la lista
        itemCount: equipo.length,
        //Define cómo se construirá cada elemento de la lista.
        itemBuilder:(context,index){
        // return Text("Data $index");
        return ListTile(title: Text("Es ${equipo[index]}"));
      })),
    );
  }
}