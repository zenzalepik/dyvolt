import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/icons.dart';

class Home extends StatefulWidget {
  final String urlVideo;

  Home({required this.urlVideo});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.network(widget.urlVideo);
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16)
      ),
      child: AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: Stack(
          children: [
            Center(
              child: Container( decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
                color: Colors.black,
      ),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: IconButton(
                iconSize: 48,
                onPressed: () {
                  if (controller.value.isPlaying) {
                    controller.pause();
                  } else {
                    controller.play();
                  }
                  setState(() {});
                },
                icon: controller.value.isPlaying
                    ? CustomIcon(
                        iconName: 'icon_pause',
                        size: 48,
                        color: AppColors.d9Color,
                      )
                    : CustomIcon(
                        iconName: 'icon_play',
                        size: 48,
                        color: AppColors.d9Color,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
