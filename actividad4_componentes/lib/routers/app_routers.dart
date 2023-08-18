
import 'package:actividad4_componentes/screen/grid_screen.dart';
import 'package:actividad4_componentes/screen/layout_screen.dart';
import 'package:actividad4_componentes/screen/tarjeta_screen.dart';
import 'package:flutter/material.dart';
import '../model/menu_options_model.dart';

import '../screen/screen.dart';

class AppRouters{
  static Map<String, StatelessWidget Function(BuildContext context)> routes = {
    //Esta línea define la ruta principal ("/") en el mapa de rutas.
    //Se crea una instancia de la clase y se devuelve
        '/':(BuildContext context) => const HomeScreen(),
        //Esta línea define la ruta "/ListView" en el mapa de rutas.
        //Se crea una instancia de la clase y se devuelve
        '/ListView':(BuildContext context) => const ListViewBuildScreen(),
        //Esta línea define la ruta "/Jugador" en el mapa de rutas.
        //Se crea una instancia de la clase y se devuelve
        '/Jugador':(BuildContext context) => const JugadorScreen(),
        //Esta línea define la ruta "/Equipos" en el mapa de rutas.
        //Se crea una instancia de la clase y se devuelve
        '/Equipos':(BuildContext context) => const EquipoScreen(),
        '/Tarjetas':(BuildContext context) => const CardScreen(),
        '/tarjetaS':(BuildContext context) => const tarjetaScreen(),
        '/layout': (BuildContext context) => const LayoutScreen(),
        '/descripcionProducto':(BuildContext context) => Description(),
         '/grid':(BuildContext context) =>const GridScreen()

      };
    //Declara una variable estática llamada initialRouters y le asigna el valor "/". 
    //Esta variable representa la ruta inicial de la aplicación.
  static String initialRouters='/';
  //Esta línea declara una variable estática llamada menu, que es una lista de mapas.
  //Cada mapa dentro de la lista representa un elemento de menú en la aplicación.
  //Cada mapa tiene tres claves: 'router' (cadena que representa una ruta), 'name' (nombre del elemento de menú) y 'icon' (un ícono asociado al elemento de menú).
  static List<Map<String, dynamic>> menu = [
    
    {
      'router':'/',
      'name': 'home',
      'icon': const Icon(Icons.home)
    },
    //Representa un elemento de menú con la ruta '/ListView', el nombre
    {
      'router':'/ListView',
      'name': 'list2',
      'icon': Icon(Icons.account_balance)
    },
    //Representa un elemento de menú con la ruta '/Jugador', el nombre
    {
      'router':'/Jugador',
      'name': 'list3',
      'icon': Icon(Icons.list_alt_rounded)

    },
    {
      'router':'/Tarjetas',
      'name': 'list4',
      'icon': Icon(Icons.card_membership)

    },
    {
      'router':'/tarjetaS',
      'name': 'list5',
      'icon': Icon(Icons.card_travel)
    },
    {
       'router':'/layout',
      'name': 'list6',
      'icon': Icon(Icons.electric_meter_rounded)
    },
    {
       'router':'/grid',
      'name': 'list7',
      'icon': Icon(Icons.gavel_outlined)
    }

  ]; 
  
  static List<Map<String, dynamic>> productos = [
    {
    'id':1,
    'Titulo':'Quesabirrias',
    'Subtítulo':'Quesabirrias',
    'Descripcion':'Plato mexicano que consiste en carne de res cocida al estilo birria doblada en una tortilla con queso derretido y servida con una guarnición de caldo para mojar.',
    'Imagenes':'https://images.unsplash.com/photo-1606350383072-4b031d6bd834?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'precio':'15'
    },
    {
    'id':2,
    'Titulo':'Elotes Preparadps',
    'Subtítulo':'Elotes Preparados',
    'Descripcion':'Elaboran principalmente con elote, mayonesa, chile en polvo, queso y limón.',
    'Imagenes':'https://images.unsplash.com/photo-1570716774271-ab30ad4924a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'precio':'13'
    },
    {
    'id':3,
    'Titulo':'Guacamole',
    'Subtítulo':'Guacamole',
    'Descripcion':'Es una salsa mexicana preparada a base de aguacate y chile verde o chile pimiento, y algunas veces tomate/jitomate',
    'Imagenes':'https://plus.unsplash.com/premium_photo-1681406689557-e09522dda8d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'precio':'18.35'
    },
    {
    'id':4,
    'Titulo':'Chile en Nogada',
    'Subtítulo':'Chile en Nogada',
    'Descripcion':' platillos típicos de la gastronomía mexicana y del estado de Puebla. Ha sido llamado el "platillo mexicano por excelencia".​',
    'Imagenes':'https://images.unsplash.com/photo-1588274347149-9c02f0cf05ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'precio':'15'
    },
    {
    'id':5,
    'Titulo':'Tacos',
    'Subtítulo':'Tacos',
    'Descripcion':'Consiste en una tortilla, generalmente de maíz, que comúnmente se enrolla para contener dentro diversos ingredientes y algún tipo de salsa y verdura',
    'Imagenes':'https://plus.unsplash.com/premium_photo-1681406994530-3de7406c21a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'precio':'10'
    },
    {
    'id':6,
    'Titulo':'Tamales',
    'Subtítulo':'Tamales',
    'Descripcion':'son pequeños cuerpos de masa hecha de maíz rellenos de carne, verduras o algún guisado',
    'Imagenes':'https://images.unsplash.com/photo-1548078835-cb7d27702c1f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzZ8fGNvbWlkYSUyMG1leGljYW5hfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60',
    'precio':'20'
    },
    {
    'id':7,
    'Titulo':'Burrito',
    'Subtítulo':'Burrito',
    'Descripcion':'Es un plato de origen mexicano que consiste en una tortilla de harina de trigo enrollada en forma de ovoide rellena de diversos ingredientes y que se suele acompañar de frijoles refritos.',
    'Imagenes':'https://images.unsplash.com/photo-1600315958029-b922dee42ac2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=932&q=80',
    'precio':'13'
    },
    {
    'id':8,
    'Titulo':'Pozole',
    'Subtítulo':'Pozole',
    'Descripcion':'Caldo tradicional mexicano hecho a base de granos de maíz nixtamalizados, comúnmente de la variedad cacahuazintle, al que se agregan carnes, verduras y especias muy variadas según la región.​ ',
    'Imagenes':'https://images.unsplash.com/photo-1579640873954-766bf0235bf3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80',
    'precio':'35'
    }

  ];

  //declara una lista final llamada menuOptions que contiene elementos del tipo MenuOption. 
  //Cada elemento de la lista es una instancia de la clase MenuOption con valores específicos 
  //para las propiedades 
  static final menuOptions = <MenuOption>[
    MenuOption(router: '/', icon: Icons.home, name: 'Home'),
    MenuOption(router: '/ListView', icon: Icons.power, name: 'ListView'),
    MenuOption(router: '/Jugador', icon: Icons.light, name: 'list3'),
    MenuOption(router: '/Tarjetas', icon: Icons.card_membership, name: 'list4'),
    MenuOption(router: '/tarjetaS', icon: Icons.card_travel, name: 'list5'),
    MenuOption(router: '/layout', icon: Icons.electric_meter_rounded, name: 'list6'),
    MenuOption(router: '/grid', icon: Icons.gavel_outlined, name: 'list7')

    
  ];
  // declara un método estático llamado onGenarteRouter que toma un parámetro llamado settings. 
  //Este método se utiliza para generar una ruta de navegación en función de los ajustes recibidos.
  static onGenarteRouter(settings) {
    //devuelve una nueva instancia de MaterialPageRoute
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
  
}