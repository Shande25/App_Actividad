import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  VideoPlayerScreen({required this.videoUrl});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Extraer el ID del video de la URL
    String videoId = YoutubePlayer.convertUrlToId(widget.videoUrl)!;

    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true, // Inicia el video automáticamente
        mute: false,    // No iniciar en silencio
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose(); // Libera el controlador cuando la pantalla se destruye
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro para imitar Netflix
      appBar: AppBar(
        title: Text(
          "Reproductor de Video",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true, // Muestra el progreso del video
          progressIndicatorColor: Colors.red, // Color de la barra de progreso
          progressColors: ProgressBarColors(
            playedColor: Colors.red, // Color de la parte jugada
            handleColor: Colors.white, // Color del control deslizante
          ),
          onReady: () {
            // Acción al estar listo para reproducir
            print("El video está listo para reproducir.");
          },
          bottomActions: [
            CurrentPosition(),
            ProgressBar(isExpanded: true),
            PlayPauseButton(),
            FullScreenButton(),
          ],
        ),
      ),
    );
  }
}
