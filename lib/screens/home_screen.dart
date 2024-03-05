import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        title: Center(child: Text('Peliculas en cine')),
      ),
      body: Column(
        children: [
          CardSwiper(
            movies: moviesProvider.onDisplayMovies,
          ),
          MovieSlider(movies: moviesProvider.popularMovies)
        ],
      ),
    );
  }
}