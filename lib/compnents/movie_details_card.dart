import 'package:flutter/material.dart';

class MovieDetailsCard extends StatelessWidget {
  final String moviePath;
  const MovieDetailsCard({super.key, required this.moviePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: Image.asset(
            moviePath,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
