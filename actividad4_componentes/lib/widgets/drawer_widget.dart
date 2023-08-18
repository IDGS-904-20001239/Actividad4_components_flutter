import 'package:actividad4_componentes/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../routers/app_routers.dart';

class DawerWidget extends StatefulWidget {
  const DawerWidget({super.key});

  @override  
  State<DawerWidget> createState() => _DawerWidgetState();
}

//Implementa el método createState() que devuelve una instancia de _DawerWidgetState
class _DawerWidgetState extends State<DawerWidget> {
  //Declara una variable _packageInfo del tipo PackageInfo y la inicializa con 
  //valores predeterminados desconocidos para las propiedades de la aplicación.
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );
  //Define un método asincrónico llamado initPackageInfo() que obtiene la información de 
  //paquete de la plataforma y actualiza el estado de _packageInfo con los valores obtenidos.
  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  //Anula el método initState() para realizar tareas de 
  //inicialización antes de que el widget se construya completamente.
  @override
  void initState() {
    initPackageInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Column(
        children: [
          //Muestra una lista de elementos obtenidos de AppRouters.menuOptions. 
          //Cada elemento se muestra como un ListTile con el nombre y el icono correspondiente. 
          //Al hacer clic en un elemento, se navega a la ruta asociada utilizando Navigator.pushNamed().
          DrawerHeader(
            margin: EdgeInsets.only(top:0),
            decoration: BoxDecoration(color: AppThemes.primary3,image:DecorationImage(image: AssetImage('assets/leon.png'), fit: BoxFit.fitWidth ) ),
            child: Align(alignment: Alignment.bottomRight, 
            child: Text('version: 1.0.1',style: TextStyle(color: (Colors.white)),),)),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(AppRouters.menuOptions[i].name),
                  leading: Icon(AppRouters.menuOptions[i].icon),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRouters.menuOptions[i].router);
                  },
                );
              },
              separatorBuilder: (__, _) => const Divider(),
              itemCount: AppRouters.menuOptions.length)
        ],
      ),
    );
  }
}

//Viernes: traer un logotipo con transparencia, icono