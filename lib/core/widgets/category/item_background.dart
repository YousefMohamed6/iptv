import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/colors_manager.dart';

class ItemBackground extends StatelessWidget {
  const ItemBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            const Color(0xffFFFFFF).withOpacity(0.2),
            const Color(0xff999999).withOpacity(0.2),
          ],
        ),
        color: ColorManager.primary,
      ),
      child: child,
    );
  }
}
