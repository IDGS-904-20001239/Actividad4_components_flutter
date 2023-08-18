import 'package:actividad4_componentes/screen/screen.dart';
import 'package:actividad4_componentes/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:actividad4_componentes/widgets/widget.dart';
import 'package:actividad4_componentes/routers/app_routers.dart';

class Description extends StatelessWidget {
  const Description({super.key});

    @override
  Widget build(BuildContext context) {
    final product = (ModalRoute.of (context) ?.settings.arguments ??
      <String, dynamic>{}) as Map;
          
          return Scaffold( 
            body: CustomScrollView(
              slivers: [
              CustomAppBar(producto:product ),
              SliverList( 
                delegate: SliverChildListDelegate(
                  [
                    Padding( 
                      padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 8), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment. start, 
                      children: [
                        Text (
                          product ['titulo'],
                          style: Theme. of (context) . textTheme. headlineSmall,
                        ),
                        const SizedBox(height: 5),
                        Text ('\$${product ['precio']}',
                          style: Theme.of (context) . textTheme. labelLarge), 
                        const SizedBox(height: 15),
                        Text (
                          product ['Descripcion'],
                          style: Theme. of (context). textTheme. bodyMedium,
                        ),
                        const SizedBox (height: 20),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
       ),
          );
  }
  }       
   class CustomAppBar extends StatelessWidget {
        final Map producto;
        const CustomAppBar ({super.key, required this.producto}) ;

        @override
          Widget build (BuildContext context) {
            return SliverAppBar(
              backgroundColor: AppThemes.primary,
              expandedHeight: 200, 
              floating: false, 
              pinned: true, 
              flexibleSpace: FlexibleSpaceBar( 
                centerTitle: true,
                title: Container(
                    alignment: Alignment.bottomCenter,
                    width: double. infinity, 
                    child: Text(producto ['titulo'])),
            background: FadeInImage(
                  placeholder: const AssetImage('assets/load.gif'), 
                  image: NetworkImage (producto ['Imagenes']), 
                  fit: BoxFit. cover,
            ),
          ),
      );
    }
   }

