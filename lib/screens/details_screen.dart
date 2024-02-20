
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'Sin nombre'; // Trae los argumentos de otra ventana
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              _PosterAndTitle(),
            ])
          )
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200,
      floating: false, // Para que pueda cambiar de tamaño
      pinned: true, // Se quede el nombre de la pelicula aunque hagamos mucho scroll
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true, // Se quede centrado
        titlePadding: EdgeInsets.all(0),
        
        title: Container(
          width: double.infinity, // Abarque todo el ancho
          alignment: Alignment.bottomCenter,
          color: Colors.black,
          child: const Text('movie.title', style: TextStyle(fontSize: 18),),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: AssetImage('assets/no-image.jpg'),
        ),
      ),
       
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect( // Widget que recorta su hijo rectangularmente con esquinas redondeadas.
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'), 
              image: AssetImage('assets/no-image.jpg'),
              height: 250,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  'movie.title', 
                  style: TextStyle(
                    fontSize: 30
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  'movie.titleORIGINAL', 
                  style: TextStyle(
                    fontSize: 18
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                // ROW -> Colocar un icono con tamanio de 20 y sera star_outline, sized box ancho 5 pixeles y texto 'movie.voteAvare' tamanio de 15
                Row(
                  children: [

                    Icon(
                      Icons.star_outline, 
                      size: 20, 
                      color: Colors.amber,
                      
                    ),
                    SizedBox(width: 5),
                    Text(
                      'movie.voteAvare', 
                      style: TextStyle(
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                      )
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}