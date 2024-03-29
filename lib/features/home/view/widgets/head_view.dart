import 'package:flutter/widgets.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/core/widgets/custom_logo.dart';

class HeadView extends StatelessWidget {
  const HeadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomLogo(),
        Column(
          children: [
            Image.asset(
              AssetsManager.circles,
              width: MediaQuery.sizeOf(context).width * 0.24,
            ),
            const SizedBox(height: 16),
            Text(
              "Your subscription will expire in\n2024/12/28",
              textAlign: TextAlign.center,
              style: StyleManager.textStyle16.copyWith(
                fontFamily: FontFamily.lexend,
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          AssetsManager.hour,
          width: MediaQuery.sizeOf(context).width * 0.15,
        ),
      ],
    );
  }
}
