import 'package:flutter/material.dart';
import './data/joke_data.dart';
import './ui/screens/joke_card.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(JokeApp());

class JokeApp extends StatefulWidget {
  const JokeApp({
    super.key,
  });

  @override
  State<JokeApp> createState() => _JokeAppState();
}

class _JokeAppState extends State<JokeApp> {
  int favoriteJokeID = -1;

    void toggleFavorite(int jokeId) {  
    setState(() {
      if (favoriteJokeID == jokeId) {
        favoriteJokeID = -1;
      } else {
        favoriteJokeID = jokeId;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: appColor,
              title: const Text("Favorite Jokes"),
            ),
          body: ListView.builder(
            itemCount: jokes.length,
            itemBuilder: (context, index) {
              final joke = jokes[index];
              return JokeCard(
                joke: joke,
                isFavorite: favoriteJokeID == joke.id,
                onToggleFavorite: () => toggleFavorite(joke.id),
              );
            },
          ),
          ),
        );
  }
}
