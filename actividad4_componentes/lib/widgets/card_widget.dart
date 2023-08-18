import 'package:actividad4_componentes/theme/app_themes.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final Map producto;
  const ProductCardWidget({Key? key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/detallePlato', arguments: producto),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7)
                ),
                child: FadeInImage(
                  placeholder: const AssetImage('assets/load.gif'),
                  image: NetworkImage(producto['Imagenes'] ?? ''),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/detallePlato', arguments: producto),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            producto['Titulo'], 
                            style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18
                            ),
                          ),
                          Text(
                            producto['Subtítulo'], 
                            style: TextStyle(
                              color: AppThemes.primary4, fontSize: 12
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('\$${producto['precio']}'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.add_shopping_cart_rounded), 
                        color: AppThemes.primary,
                      ),
                      const Text('Agregar'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.local_dining_sharp), 
                        color: AppThemes.primary,
                      ),
                      const Text('Delivery'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.share), 
                        color: AppThemes.primary,
                      ),
                      const Text('Compartir'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
