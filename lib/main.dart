import 'package:flutter/material.dart';
import 'package:taller_01/screen/catalog_screen.dart';
import 'package:taller_01/screen/login_screen.dart';
import 'package:taller_01/screen/player_screen.dart';
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
      '/player': (context) => PlayerScreen(movie: {},),
      '/register': (context) => RegisterScreen(),
    },
  ));
}
