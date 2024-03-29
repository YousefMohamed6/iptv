import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modern_player/modern_player.dart';

class ModernPlayerView extends StatefulWidget {
  const ModernPlayerView({super.key, required this.url});
  final String url;

  @override
  State<ModernPlayerView> createState() => _ModernPlayerViewState();
}

class _ModernPlayerViewState extends State<ModernPlayerView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ModernPlayer.createPlayer(
          controlsOptions: ModernPlayerControlsOptions(
            enableVolumeSlider: true,
            showBackbutton: true,
            showControls: true,
            showMute: true,
            showMenu: true,
            showBottomBar: true,
          ),
          callbackOptions: ModernPlayerCallbackOptions(
            onBackPressed: () {
              context.pop();
            },
          ),
          video: ModernPlayerVideo.single(
            ModernPlayerVideoData.network(
              label: "",
              url: widget.url,
            ),
          ),
        ),
      ),
    );
  }
}
