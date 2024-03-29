import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class ProviderChooseText extends StatelessWidget {
  const ProviderChooseText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.group_outlined),
        const SizedBox(width: 4),
        Text(
          "Choose The Provider",
          style: StyleManager.textStyle14.copyWith(
            fontSize: MediaQuery.sizeOf(context).width * 0.016,
          ),
        ),
      ],
    );
  }
}
