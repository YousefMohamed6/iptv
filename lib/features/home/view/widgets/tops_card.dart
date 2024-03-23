import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/iptv_item.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/tops/tops_view.dart';

class TopsCard extends StatelessWidget {
  const TopsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return IPTVItem(
      imagePath: AssetsManager.top,
      onTap: () {
        BlocProvider.of<HomeCubit>(context).getTops();
        context.pushNamed(TopsView.routeName);
      },
    );
  }
}
