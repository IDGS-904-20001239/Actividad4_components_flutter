import 'package:actividad4_componentes/routers/app_routers.dart';
import 'package:actividad4_componentes/theme/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Devuelve una instancia de la clase MaterialApp, que es el widget principal 
    return MaterialApp(
      //Este es el título de la aplicación
      title: 'Flutter Demo',
      //Esta línea desactiva la visualización del banner de modo de depuración 
      //en la esquina superior derecha de la pantalla.
      debugShowCheckedModeBanner: false,
      //Establece el tema de la aplicación utilizando el valor
      theme: AppThemes.themeslight,
      //Establece la ruta inicial de la aplicación
      initialRoute: AppRouters.initialRouters,
      // home: const ListViewBuildScreen(),
      routes:AppRouters.routes,
      //se utiliza para definir la función que se ejecutará cuando se necesite 
      //generar una ruta de navegación no declarada explícitamente en el atributo routes de MaterialApp.
      onGenerateRoute: (settings) => AppRouters.onGenarteRouter(settings),
    );
  }
}




