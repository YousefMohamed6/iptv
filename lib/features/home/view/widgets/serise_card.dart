import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/iptv_item.dart';
import 'package:iptv/features/streams/series/series_view.dart';

class SeriseCard extends StatelessWidget {
  const SeriseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return IPTVItem(
      imagePath: AssetsManager.series,
      onTap: () {
        context.pushNamed(SeriesView.routeName);
      },
    );
  }
}
