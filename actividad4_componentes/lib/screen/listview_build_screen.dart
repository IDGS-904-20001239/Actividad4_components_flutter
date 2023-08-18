import 'package:flutter/material.dart';

class ListViewBuildScreen extends StatelessWidget {
   
  const ListViewBuildScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Lista llamada menu que contiene una serie de Hola.
   List<String> menu=["Hola 1", "Hola 2", "Hola 3", "Hola 4", "Hola 5", "Hola 6"];
    // contiene una barra de aplicación (appBar) y el cuerpo de la pantalla. 
    return Scaffold(
      //La barra de aplicación tiene un título centrado que muestra el texto "Listado".
      appBar: AppBar(title: const Center(child: Text("Listado"))),
      //Permite construir una lista eficientemente con elementos renderizados bajo demanda
      body: (ListView.builder(
         //Especifica la cantidad de elementos que tendrá la lista
        itemCount: menu.length,
        //Define cómo se construirá cada elemento de la lista.
        itemBuilder:(context,index){
        // return Text("Data $index");
        return ListTile(title: Text("Menu ${menu[index]}"));
      })),
    );
  }
}