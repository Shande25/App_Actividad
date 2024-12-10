import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  final List<Map<String, String>> movies = [
    {
      'title': 'Película 1',
      'description': 'Una emocionante aventura en el espacio.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/9oymvcp2zyw0zpwotuxldo2msmw-6683e31cc95b0.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 2',
      'description': 'Una comedia para disfrutar en familia.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/dune-2-poster-online-rrss-ig-1080x1350-65c4cce09426f.jpeg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 3',
      'description': 'Un thriller que te mantendrá al borde del asiento.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/ypspotlttsgloukfpk6fgpa6vzx-6683e597cd817.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 4',
      'description': 'Un documental sobre la naturaleza.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/sulizxysncxqy7dvq5wlh4gzvp1-6683e793c758a.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
      {
      'title': 'Película 1',
      'description': 'Una emocionante aventura en el espacio.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/9oymvcp2zyw0zpwotuxldo2msmw-6683e31cc95b0.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 2',
      'description': 'Una comedia para disfrutar en familia.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/dune-2-poster-online-rrss-ig-1080x1350-65c4cce09426f.jpeg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 3',
      'description': 'Un thriller que te mantendrá al borde del asiento.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/ypspotlttsgloukfpk6fgpa6vzx-6683e597cd817.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 4',
      'description': 'Un documental sobre la naturaleza.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/sulizxysncxqy7dvq5wlh4gzvp1-6683e793c758a.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },  {
      'title': 'Película 1',
      'description': 'Una emocionante aventura en el espacio.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/9oymvcp2zyw0zpwotuxldo2msmw-6683e31cc95b0.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 2',
      'description': 'Una comedia para disfrutar en familia.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/dune-2-poster-online-rrss-ig-1080x1350-65c4cce09426f.jpeg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 3',
      'description': 'Un thriller que te mantendrá al borde del asiento.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/ypspotlttsgloukfpk6fgpa6vzx-6683e597cd817.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    {
      'title': 'Película 4',
      'description': 'Un documental sobre la naturaleza.',
      'image': 'https://hips.hearstapps.com/hmg-prod/images/sulizxysncxqy7dvq5wlh4gzvp1-6683e793c758a.jpg?crop=1xw:1xh;center,top&resize=980:*',
      'videoUrl': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', // Agregar URL del video
    },
    // Puedes continuar agregando más películas...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Catálogo de Películas",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.6,
          ),
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/player',
                  arguments: movies[index]['videoUrl'], 
                );
              },
              child: Card(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          movies[index]['image']!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                              child: Icon(Icons.error, color: Colors.red, size: 40),
                            );
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                color: Colors.red,
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movies[index]['title']!,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4),
                          Text(
                            movies[index]['description']!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
