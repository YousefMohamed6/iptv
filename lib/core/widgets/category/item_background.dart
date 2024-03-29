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
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            const Color(0xff999999),
            const Color(0xffFFFFFF).withOpacity(0.3),
          ],
        ),
        color: ColorManager.primary,
      ),
      child: child,
    );
  }
}
