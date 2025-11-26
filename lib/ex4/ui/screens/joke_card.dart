import 'package:flutter/material.dart';
import '../theme/theme.dart';

class JokeCard extends StatelessWidget {
  final dynamic joke;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;

  const JokeCard({
    super.key,
    required this.joke,
    required this.isFavorite,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  joke.title,
                  style: TextStyle(
                      color: AppColors.primary, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                Text(
                  joke.description,  
                )
              ],
            ),
          ),
          IconButton(
              onPressed: onToggleFavorite,
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ))
        ],
      ),
    );
  }
}


