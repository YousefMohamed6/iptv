import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iptv/core/uitls/colors_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.path,
    required this.onTap,
  });
  final String path;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: ColorManager.background,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          path,
          width: MediaQuery.sizeOf(context).width * 0.024,
          height: MediaQuery.sizeOf(context).height * 0.040,
        ),
      ),
    );
  }
}
