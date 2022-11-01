import 'package:flutter/material.dart';

class SearchCards extends StatefulWidget {
  const SearchCards({Key? key}) : super(key: key);

  @override
  _SearchCardsState createState() => _SearchCardsState();
}

class _SearchCardsState extends State<SearchCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CardGenre(),
            CardGenre(),
          ],
        ),
        Row(
          children: const [
            CardGenre(),
            CardGenre(),
          ],
        ),
      ],
    );
  }
}

class CardGenre extends StatefulWidget {
  const CardGenre({Key? key}) : super(key: key);

  @override
  _CardGenreState createState() => _CardGenreState();
}

class _CardGenreState extends State<CardGenre> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 140,
        height: 70,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Text(
                  'Anime',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Transform.rotate(
              angle: 0.5,
              child: const Image(
                image: NetworkImage(
                    'https://images.hdqwalls.com/download/naruto-logo-anime-8k-qz-3840x2160.jpg'),
                width: 70.0,
                height: 60.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
