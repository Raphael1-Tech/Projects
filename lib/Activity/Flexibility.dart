import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

@override
Widget build (BuildContext context) {
  return MaterialApp(
    title: "Flexibility Video",
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity
    ),
    home: Videos(title: "Youtube Quad Stretch", url: "https://www.youtube.com/watch?v=zFpq_j453hQ",),
  );
}
class Videos extends StatefulWidget {
  Videos ({this.title,this.url});
  final String title;
  final url;


  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  YoutubePlayerController _controller;

  void runYoutubePlayer() {
    _controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
      flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: false,
      )
    );
  }
  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }
  @override
  void dispose () {
    _controller.dispose();
    super.dispose();
  }
  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }


  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context, player) {
        return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
        ),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          player,
        SizedBox(height: 40.0,
        ),
        Text('You have push this many times')
        ],
        ),
        );
      }

      ,
    );
  }
}
