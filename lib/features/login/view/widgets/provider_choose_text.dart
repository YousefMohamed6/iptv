import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class ProviderChooseText extends StatelessWidget {
  const ProviderChooseText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.group),
        SizedBox(width: 4),
        Text(
          "Choose The Provider",
          style: StyleManager.textStyle16,
        ),
      ],
    );
  }
}
