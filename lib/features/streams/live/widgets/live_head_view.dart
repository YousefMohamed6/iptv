import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/custom_logo.dart';

class LiveHeadView extends StatelessWidget {
  const LiveHeadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 16),
        CustomLogo(
          width: MediaQuery.sizeOf(context).width * 0.40,
        ),
        const SizedBox(height: 16),
        Image.asset(
          AssetsManager.circles,
          width: MediaQuery.sizeOf(context).width * 0.55,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
