import 'package:flutter/material.dart';
import 'package:actividad4_componentes/screen/screen.dart';
import 'package:actividad4_componentes/widgets/widget.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Layout'),
      ),
      endDrawer: Drawer(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemCount: 8,
        itemBuilder: (context, index){
          return Image.network('https://picsum.photos/250?image=$index');
        }),
    );
  }
}