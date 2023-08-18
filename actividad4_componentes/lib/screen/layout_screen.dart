import 'package:actividad4_componentes/routers/app_routers.dart';
import 'package:actividad4_componentes/screen/descripcion_producto_screen.dart';
import 'package:actividad4_componentes/screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:actividad4_componentes/routers/app_routers.dart';
import 'package:actividad4_componentes/widgets/widget.dart';


class LayoutScreen extends StatelessWidget {
  const LayoutScreen ({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Menú"))),
      endDrawer: const DawerWidget(),
      body: ListView.separated(
        itemCount: AppRouters.productos.length,
        separatorBuilder: (BuildContext context, int index)
        {return SizedBox(height: 10,);},
        itemBuilder: (
          (BuildContext context, int index) {
            final producto = AppRouters.productos[index];
            return ProductCardWidget(producto: producto);
            })),
    );
  }
}