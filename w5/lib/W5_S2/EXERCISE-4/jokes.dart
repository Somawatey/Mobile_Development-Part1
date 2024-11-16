import 'package:flutter/material.dart';
import 'package:w5/W5_S2/EXERCISE-4/main.dart';

class Joke {
  String title;
  String description;
  bool isFavorite;
  Joke(
      {required this.title,
      required this.description,
      this.isFavorite = false});
}

class JokeCard extends StatefulWidget {
  const JokeCard({super.key});

  @override
  State<JokeCard> createState() => _JokeCardState();
}

class _JokeCardState extends State<JokeCard> {
  List<Joke> jokes = List.generate(20, (index) {
    return Joke(
      title: 'Joke $index',
      description: 'description',
    );
  });

  void setFavorite(int index) {
    setState(() {
      // Set all jokes as not favorite
      for (var joke in jokes) {
        joke.isFavorite = false;
      }
      // Set the selected joke as favorite
      jokes[index].isFavorite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: jokes.map((joke) {
          int index = jokes.indexOf(joke);
          return FavoriteCard(
            title: joke.title,
            description: joke.description,
            isFavorite: joke.isFavorite,
            onFavoriteClick: () => setFavorite(index),
          );
        }).toList(),
      ),
    );
  }
}