import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/core/widgets/custom_logo.dart';
import 'package:iptv/features/home/view/widgets/Date_time_view.dart';
import 'package:iptv/features/home/view/widgets/buttons/setting_view.dart';
import 'package:iptv/features/home/view/widgets/custom_divider.dart';

class HeadView extends StatelessWidget {
  const HeadView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomLogo(),
        CustomDivider(),
        Setting(),
        CustomDivider(),
        Text("Your subscription will expire in\n2024/12/28",
            textAlign: TextAlign.center, style: StyleManager.textStyle18),
        DateTimeView(),
      ],
    );
  }
}
