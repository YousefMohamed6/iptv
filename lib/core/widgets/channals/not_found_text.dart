import 'package:flutter/widgets.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class NotFoundText extends StatelessWidget {
  const NotFoundText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Not Found',
        style: StyleManager.textStyle16,
      ),
    );
  }
}
