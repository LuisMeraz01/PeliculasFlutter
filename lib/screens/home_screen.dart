
import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          
          title: const Text('Home'),
        ),
        body: const Center(
          child: CardMovie(
          
          )
        ),
      ),
    );
  }
}