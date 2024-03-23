import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/iptv_item.dart';
import 'package:iptv/features/streams/amazon/amazon_view.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';

class AmazonCard extends StatelessWidget {
  const AmazonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return IPTVItem(
      imagePath: AssetsManager.amazon,
      onTap: () {
        BlocProvider.of<HomeCubit>(context).getAmazon();
        context.pushNamed(AmazonView.routeName);
      },
    );
  }
}
