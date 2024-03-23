import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class DescraptionText extends StatelessWidget {
  const DescraptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "We are just a player\nwe don't sell any subscription to any provider\nwe only play the content and have no relation with any provider or the provider's content",
      style: StyleManager.textStyle16.copyWith(
        color: const Color(0xffFFAD37),
        fontFamily: FontFamily.lexend,
      ),
      textAlign: TextAlign.center,
    );
  }
}
