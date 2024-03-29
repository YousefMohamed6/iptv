import 'package:flutter/widgets.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class FavouriteLenth extends StatelessWidget {
  const FavouriteLenth({super.key, required this.favouriteLenth});
  final int favouriteLenth;
  @override
  Widget build(BuildContext context) {
    return Text(
      favouriteLenth.toString(),
      style: StyleManager.textStyle16,
    );
  }
}