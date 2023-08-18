import 'package:actividad4_componentes/theme/app_themes.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Tarjetas')),
      ),
      endDrawer: const CardWidget(),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: CardWidget(),
          );
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: AppThemes.primary4),
            title: Text('Titulo de la Tarjeta'),
            subtitle: Text(
              'There are many variations of passages of Lorem Ipsum...',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Soy el boton 1'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Soy el boton 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


