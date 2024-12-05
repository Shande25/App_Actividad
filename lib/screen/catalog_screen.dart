import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  final List<Map<String, String>> movies = [
    {'title': 'Película 1', 'description': 'Descripción de Película 1', 'image': 'assets/images/movie1.jpg'},
    {'title': 'Película 2', 'description': 'Descripción de Película 2', 'image': 'assets/images/movie2.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catálogo de Películas")),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(movies[index]['image']!),
              title: Text(movies[index]['title']!),
              subtitle: Text(movies[index]['description']!),
              onTap: () {
                Navigator.pushNamed(context, '/player', arguments: movies[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
