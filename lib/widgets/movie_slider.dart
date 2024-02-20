
import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(

      width: double.infinity, // El ancho de contenedor sera todo el ancho disponible
      height: size.height, // El alto del contenedor sera la altura del dispositivo
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Text(
              'Populares',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded( // se expande para llenar su contenedor padre
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => const _MoviePoster(),
            )
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(  // Un widget que detecta gestos del usuario
            onTap: () => Navigator.pushNamed(context, 'details', arguments: ''),
            child: ClipRRect( // Redondear esquinas del hijo rectangular
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage( // Animacion de desvanecimiento
                placeholder: AssetImage('assets/loading.gif'), 
                image: AssetImage('assets/no-image.jpg'),
                width: 130,
                height: 165, 
              ),
            ),
          ),
          const SizedBox(height: 5,),
          const Text(
            'Ut nulla sit aliquip incididunt aliquip voluptate nisi culpa eiusmod eu exercitation qui reprehenderit ut.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis, // si el texto es demasiado largo se mostrara un ('...')
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}