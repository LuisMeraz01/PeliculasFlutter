
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'Sin nombre';
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'Sin Nombre';
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              _PosterAndTitle(),
              _Overview(),
            ]),
          ),
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
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: const Text(
            'movie.title',
            style: TextStyle(fontSize: 18),
          ),
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
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/no-image.jpg'),
              height: 250,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'movie.title',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  'movie.titleoRIGINAL',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_outline,
                      size: 20,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'movie.voteAverage',
                      style: TextStyle(fontSize: 15),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Text(
        'Exercitation amet commodo et elit id dolor adipisicing aliquip. Eu officia laborum in sint consectetur enim nostrud. Anim est Lorem sit mollit ex sunt in enim pariatur duis. Labore incididunt excepteur culpa sint minim. Aute elit amet sunt cillum eiusmod fugiat esse magna voluptate elit Lorem consectetur. Pariatur aliquip eiusmod labore anim minim officia non.',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}