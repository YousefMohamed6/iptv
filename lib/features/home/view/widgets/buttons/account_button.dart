import 'package:flutter/cupertino.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/features/home/view/widgets/buttons/custom_button.dart';

class AcountButton extends StatelessWidget {
  const AcountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      path: AssetsManager.account,
      onTap: () {},
    );
  }
}
