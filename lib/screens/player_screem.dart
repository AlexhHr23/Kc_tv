import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerScreen extends StatefulWidget {
  final String url;
  const PlayerScreen({super.key, required this.url});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late YoutubePlayerController _controler;
  late TextEditingController _idController;
  late TextEditingController _seekController;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  bool _isPlayer = false;
  late String _videoId;

  @override
  void initState() {
    super.initState();
    _videoId = YoutubePlayer.convertUrlToId(widget.url).toString();
    print('VideoId: $_videoId');
    _controler = YoutubePlayerController(
      initialVideoId: _videoId,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        isLive: false,
        forceHD: false,
        enableCaption: true
      )
    );
    ...addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
