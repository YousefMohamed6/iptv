import 'package:flutter/widgets.dart';

class IPTVItem extends StatelessWidget {
  const IPTVItem({super.key, required this.imagePath, required this.onTap});
  final String imagePath;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        fit: BoxFit.fill,
        imagePath,
        width: MediaQuery.sizeOf(context).width * 0.20,
        height: MediaQuery.sizeOf(context).height * 0.5,
      ),
    );
  }
}
