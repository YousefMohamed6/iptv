import 'package:flutter/cupertino.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/features/home/view/widgets/buttons/custom_button.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      path: AssetsManager.setting,
      onTap: () {},
    );
  }
}
