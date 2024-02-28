
import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Center(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          title: const Center(child: Text('Peliculas en cine')),
        ),
        body: SizedBox(
          child: Column(
            children: [CardSwiper(movies: moviesProvider.onDisplayMovies), MovieSlider()],
          ),
        )
      ),
    );
  }
}