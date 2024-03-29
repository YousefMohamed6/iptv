import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class ChannalNumber extends StatelessWidget {
  const ChannalNumber({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$number',
      style: StyleManager.textStyle14.copyWith(
        fontSize: MediaQuery.sizeOf(context).width * 0.020,
      ),
      overflow: TextOverflow.clip,
    );
  }
}
