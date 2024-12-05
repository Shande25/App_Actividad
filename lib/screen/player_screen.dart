import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  final Map<String, String> movie;

  PlayerScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie['title']!)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Reproduciendo: ${movie['title']}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.play_circle_fill, size: 100, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
