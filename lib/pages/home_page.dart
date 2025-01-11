// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:movies_app/compnents/movie_container.dart';
import 'package:movies_app/compnents/new_movies.dart';
import 'package:movies_app/controllers/movies_controller.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/pages/movie_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final movieController = MoviesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: '')
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Kisra',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          ' What to Watch?',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https:i.pravatar.cc/150?img=7'),
                      radius: 28,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 52, 69),
                      borderRadius: BorderRadius.circular(14)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Movies',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.27,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: movieController.upcomingMovies.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      Movie upMovie = movieController.upcomingMovies[index];
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MoviePage(
                                  movie: upMovie,
                                ),
                              ),
                            );
                          },
                          child: MovieContainer(moviePath: upMovie.imagePath));
                    },
                  ),
                ),
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       MovieContainer(
              //         moviePath: 'assets/images/midway.png',
              //       ),
              //       MovieContainer(
              //        moviePath: 'assets/images/avengerscover.png',
              //      ),
              //      MovieContainer(
              //        moviePath: 'assets/images/batman.png',
              //      ),
              //    ],
              //  ),
              //),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Movies',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.25,
                child: ListView.builder(
                  itemCount: movieController.newMovies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    Movie movie = movieController.newMovies[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MoviePage(
                                movie: movie,
                              ),
                            ),
                          );
                        },
                        child: NewMovies(moviePath: movie.imagePath));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
