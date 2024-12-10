import 'package:flutter/material.dart';
import 'package:taller_01/screen/catalog_screen.dart';
import 'package:taller_01/screen/login_screen.dart';
import 'package:taller_01/screen/videoPlayerScreen.dart';
import 'package:taller_01/screen/register_screen.dart';
import 'package:taller_01/screen/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => WelcomeScreen(),
      '/login': (context) => LoginScreen(),
      '/catalog': (context) => CatalogScreen(),
      '/register': (context) => RegisterScreen(),
    },
    onGenerateRoute: (settings) {
      if (settings.name == '/player') {
        final String videoUrl = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => VideoPlayerScreen(videoUrl: videoUrl),
        );
      }
      return null; 
    },
  ));
}
