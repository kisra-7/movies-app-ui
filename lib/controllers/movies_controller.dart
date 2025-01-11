import 'package:movies_app/models/movie.dart';

class MoviesController {
  final List newMovies = [
    Movie(name: 'Joker', imagePath: 'assets/images/joker.png'),
    Movie(name: 'You will die at 20', imagePath: 'assets/images/20.png'),
    Movie(name: 'Ali', imagePath: 'assets/images/ali.png'),
    Movie(name: 'Home Alone', imagePath: 'assets/images/kevin.png'),
    Movie(name: 'Treasure planet', imagePath: 'assets/images/planet.png'),
    Movie(name: 'Goodbye Julia', imagePath: 'assets/images/julia.png'),
    Movie(name: 'Madagascar', imagePath: 'assets/images/madagascar.png'),
  ];
  final List upcomingMovies = [
    Movie(name: 'Mid-Way', imagePath: 'assets/images/midway.png'),
    Movie(name: 'Avengers', imagePath: 'assets/images/avengerscover.png'),
    Movie(name: 'BATMAN', imagePath: 'assets/images/batman.png'),
  ];
}
