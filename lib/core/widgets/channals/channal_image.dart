import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/assets_manager.dart';

class ChannalImage extends StatelessWidget {
  const ChannalImage({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      placeholder: (context, url) => Image.asset(
        AssetsManager.channalLogo,
      ),
      width: MediaQuery.sizeOf(context).width * 0.064,
      errorWidget: (context, url, error) => Image.asset(
        AssetsManager.channalLogo,
      ),
    );
  }
}
