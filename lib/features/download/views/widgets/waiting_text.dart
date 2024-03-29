import 'package:flutter/widgets.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class WaitingText extends StatelessWidget {
  const WaitingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Please wait while Playlist is loading...',
      style: StyleManager.textStyle16,
    );
  }
}
