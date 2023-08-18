import 'package:flutter/material.dart';

class AppThemes{
  //Esto define un color primario utilizado en el tema de la aplicación
  static Color primary = Color.fromRGBO(142, 202, 230, 1);
  //Esto define un color primario2 utilizado en el tema de la aplicación
  static Color primary2 = Color.fromRGBO(247, 178, 103, 1);
  //Esto define un color primario3 utilizado en el tema de la aplicación
  static Color primary3 = Color.fromRGBO(247, 157, 101, 1);
  //Esto define un color primario4 utilizado en el tema de la aplicación
  static Color primary4 = Color.fromRGBO(244, 132, 95, 1);
  //Esto define un color primario5 utilizado en el tema de la aplicación
  static Color primary5 = Color.fromRGBO(242, 112, 89, 1);

  //Define un tema personalizado
  static ThemeData tema1 = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );

 //Esta línea declara una variable estática llamada themeslight de tipo ThemeData.
//ThemeData.light() crea una instancia del tema claro.
//.copyWith(...) crea una copia del tema claro y permite realizar modificaciones en las propiedades del tema.
  static ThemeData themeslight = ThemeData.light().copyWith(
        primaryColor: primary,
        //Esta línea establece el brillo del tema como claro.
        brightness: Brightness.light, 
        //Esta línea define el tema de la barra de aplicaciones
        appBarTheme: AppBarTheme(color: primary2, elevation: 0),
        //Establece el color de la barra de aplicaciones
        scaffoldBackgroundColor: Color.fromRGBO(241, 241, 245, 1),
        );

  static ThemeData themesdark = ThemeData.dark().copyWith(
        primaryColor: primary2,
        brightness: Brightness.dark, 
        appBarTheme: AppBarTheme(color: Colors.blueGrey, elevation: 0),
        scaffoldBackgroundColor: Color.fromRGBO(241, 241, 245, 1),
        );
}