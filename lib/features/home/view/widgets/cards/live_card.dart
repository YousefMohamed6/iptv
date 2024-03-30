import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/iptv_item.dart';
import 'package:iptv/features/streams/live/live_view.dart';

class LiveCard extends StatelessWidget {
  const LiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return IPTVItem(
      imagePath: AssetsManager.live,
      onTap: () {
        context.pushNamed(LiveView.routeName);
      },
    );
  }
}
