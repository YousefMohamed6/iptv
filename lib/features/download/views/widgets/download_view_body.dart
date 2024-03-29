import 'package:flutter/material.dart';
import 'package:iptv/features/download/views/widgets/download_image.dart';
import 'package:iptv/features/download/views/widgets/download_listener.dart';
import 'package:iptv/features/download/views/widgets/waiting_text.dart';

class DownloadViewbody extends StatelessWidget {
  const DownloadViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const DownloadListener(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          DownloadImage(),
          SizedBox(height: 20),
          WaitingText(),
          SizedBox(height: 20),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}


