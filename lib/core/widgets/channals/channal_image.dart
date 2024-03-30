import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iptv/core/uitls/assets_manager.dart';

class ChannalImage extends StatelessWidget {
  const ChannalImage({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      width: MediaQuery.sizeOf(context).width * 0.048,
      height: MediaQuery.sizeOf(context).height * 0.048,
      placeholder: (context, url) => SvgPicture.asset(
        AssetsManager.channalLogo,
        width: MediaQuery.sizeOf(context).width * 0.048,
        height: MediaQuery.sizeOf(context).height * 0.048,
      ),
      errorWidget: (context, url, error) => SvgPicture.asset(
        AssetsManager.channalLogo,
        width: MediaQuery.sizeOf(context).width * 0.048,
        height: MediaQuery.sizeOf(context).height * 0.048,
      ),
    );
  }
}
