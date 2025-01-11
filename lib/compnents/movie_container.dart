import 'package:flutter/material.dart';

class MovieContainer extends StatelessWidget {
  final String moviePath;
  const MovieContainer({super.key, required this.moviePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: Image.asset(
              moviePath,
              height: 250,
              width: 350,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
