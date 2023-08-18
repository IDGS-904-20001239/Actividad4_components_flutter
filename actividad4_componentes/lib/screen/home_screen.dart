import 'package:actividad4_componentes/routers/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:actividad4_componentes/screen/screen.dart';
import 'package:flutter/services.dart';
import '../theme/app_themes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
 @override
  Widget build(BuildContext context) {
    //Estructura básica para la pantalla
    return Scaffold(
      //Define la barra de aplicación
      appBar: AppBar(
        title: const Center(child: Text('Actvidad 4')),
      ),
      //Establece el widget DawerWidget como el cajón lateral derecho de la pantalla.
      endDrawer: const DawerWidget(),
      // drawer: Drawer(),
      //Define el cuerpo de la pantalla como un ListView.separated, 
      //que muestra una lista de elementos separados por divisores.
      body: ListView.separated(
        //Define cómo se debe construir cada elemento de la lista
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(AppRouters.menu[index]['name']),
              leading: AppRouters.menu[index]['icon'],
              onTap: () {
                Navigator.pushNamed(context, AppRouters.menu[index]['router']);
              },
            );
          },
          //Define cómo se deben construir los divisores entre los elementos de la lista.
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
          //Define el número total de elementos en la lista
          itemCount: AppRouters.menu.length),
    );
  }
}