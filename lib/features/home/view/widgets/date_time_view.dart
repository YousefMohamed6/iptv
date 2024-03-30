import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class DateTimeView extends StatelessWidget {
  const DateTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            SvgPicture.asset(
              AssetsManager.hour,
              height: 36,
            ),
            const SizedBox(height: 16),
          ],
        ),
        Text(
          "${DateTime.now().hour}:${DateTime.now().minute < 10 ? 0 : ''}${DateTime.now().minute}",
          style: StyleManager.textStyle14,
        ),
      ],
    );
  }
}
