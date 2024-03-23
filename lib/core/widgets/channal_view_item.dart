import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class ChannalViewItem extends StatelessWidget {
  const ChannalViewItem(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.onPressed});
  final String name, imageUrl;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Row(
        children: [
          Image.network(
            imageUrl,
          ),
          const SizedBox(width: 4),
          Text(
            name,
            style: StyleManager.textStyle16.copyWith(
              fontFamily: FontFamily.lexend,
            ),
          )
        ],
      ),
    );
  }
}
