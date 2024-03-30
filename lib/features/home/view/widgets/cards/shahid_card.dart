import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/iptv_item.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/shahid/shahid_view.dart';

class ShahidCard extends StatelessWidget {
  const ShahidCard({super.key});

  @override
  Widget build(BuildContext context) {
    return IPTVItem(
      imagePath: AssetsManager.shahid,
      onTap: () {
        BlocProvider.of<HomeCubit>(context).getShahid();
        context.pushNamed(ShahidView.routeName);
      },
    );
  }
}
