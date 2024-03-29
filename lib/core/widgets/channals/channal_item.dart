import 'package:flutter/material.dart';
import 'package:iptv/core/widgets/channals/channal_image.dart';
import 'package:iptv/core/widgets/channals/channal_name.dart';
import 'package:iptv/core/widgets/channals/channal_number.dart';
import 'package:iptv/features/home/model/channal_model.dart';

class ChannalItem extends StatelessWidget {
  const ChannalItem(
      {super.key,
      required this.onLongPress,
      required this.channal,
      required this.onTap, required this.onDoubleTap});
  final ChannalModel channal;
  final VoidCallback onLongPress;
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ChannalImage(imageUrl: channal.imageUrl!),
              const SizedBox(width: 16),
              ChannalName(
                name: channal.name,
              ),
            ],
          ),
          ChannalNumber(
            number: channal.number,
          )
        ],
      ),
    );
  }
}
