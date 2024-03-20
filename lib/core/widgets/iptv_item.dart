import 'package:flutter/widgets.dart';

class IPTVItem extends StatelessWidget {
  const IPTVItem({super.key, required this.imagePath, required this.onTap});
  final String imagePath;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(imagePath),
    );
  }
}
