import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iptv/core/widgets/custom_logo.dart';
import 'package:iptv/features/home/view/widgets/buttons/setting_view.dart';
import 'package:iptv/features/home/view/widgets/custom_divider.dart';

class LiveHeadView extends StatelessWidget {
  const LiveHeadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomLogo(
          width: MediaQuery.sizeOf(context).width * 0.16,
        ),
        const CustomDivider(),
        const SizedBox(width: 16),
        const Setting(),
      ],
    );
  }
}
