import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class ChannalName extends StatelessWidget {
  const ChannalName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: StyleManager.textStyle14.copyWith(
        fontSize: MediaQuery.sizeOf(context).width * 0.010,
      ),
      overflow: TextOverflow.fade,
      maxLines: 1,
      softWrap: false,
    );
  }
}
