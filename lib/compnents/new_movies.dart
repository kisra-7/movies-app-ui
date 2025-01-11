import 'package:flutter/material.dart';

class NewMovies extends StatelessWidget {
  final String moviePath;
  const NewMovies({super.key, required this.moviePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: Image.asset(
              moviePath,
              height: 240,
              width: 160,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
