
import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          title: const Center(child: Text('Peliculas en cine')),
        ),
        body: const SizedBox(
          child: Column(
            children: [CardSwiper(), MovieSlider()],
          ),
        )
      ),
    );
  }
}