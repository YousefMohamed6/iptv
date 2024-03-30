import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/iptv_item.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/kids/kids_view.dart';

class KidsCard extends StatelessWidget {
  const KidsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return IPTVItem(
      imagePath: AssetsManager.kids,
      onTap: () {
        BlocProvider.of<HomeCubit>(context).getKids();
        context.pushNamed(KidsView.routeName);
      },
    );
  }
}
