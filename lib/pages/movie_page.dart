import 'package:flutter/material.dart';
import 'package:movies_app/compnents/icon_container.dart';
import 'package:movies_app/compnents/movie_details_card.dart';
import 'package:movies_app/models/movie.dart';

class MoviePage extends StatelessWidget {
  final Movie movie;
  const MoviePage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: [
              const IconContainer(icon: Icons.arrow_back),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieDetailsCard(moviePath: movie.imagePath),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconContainer(
                          icon: Icons.add,
                        ),
                        IconContainer(
                          icon: Icons.favorite,
                        ),
                        IconContainer(
                          icon: Icons.download,
                        ),
                        IconContainer(
                          icon: Icons.share,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    movie.name,
                    style: const TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  const Text(
                    'Genre: Adventure | Fantasy | Family',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Text(
                    'Runtime: 1h 45m',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Join a brave young hero, a quirky sidekick, and a mysterious guide as they embark on an unforgettable journey to save their magical homeland. Along the way, they’ll face perilous challenges, uncover hidden truths, and discover the power of friendship and courage. Packed with breathtaking landscapes, heartwarming moments, and pulse-pounding action, The Enchanted Quest is a thrilling adventure for audiences of all ages.',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Opacity(
                      opacity: 0.4,
                      child: IconContainer(icon: Icons.arrow_back)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
