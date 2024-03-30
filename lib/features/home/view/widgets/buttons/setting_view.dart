import 'package:flutter/widgets.dart';
import 'package:iptv/core/widgets/setting_button.dart';
import 'package:iptv/features/home/view/widgets/buttons/account_button.dart';
import 'package:iptv/features/home/view/widgets/buttons/family_button.dart';
import 'package:iptv/features/home/view/widgets/buttons/refresh_butto.dart';
import 'package:iptv/features/home/view/widgets/buttons/sign_out_button.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SettingButton(),
        SizedBox(width: 4),
        RefreshButton(),
        SizedBox(width: 4),
        AcountButton(),
        SizedBox(width: 4),
        FamilyButton(),
        SizedBox(width: 4),
        SignOutButton(),
      ],
    );
  }
}