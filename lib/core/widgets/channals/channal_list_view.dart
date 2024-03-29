import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/widgets/category/item_background.dart';
import 'package:iptv/core/widgets/channals/channal_item.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class ChannalsListView extends StatelessWidget {
  const ChannalsListView({super.key, required this.channals});
  final List<ChannalModel> channals;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: channals.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => ItemBackground(
          child: ChannalItem(
            channal: channals[index],
            onTap: () {
              BlocProvider.of<HomeCubit>(context)
                  .getStreamLink(channal: channals[index]);
            },
            onDoubleTap: () {
              BlocProvider.of<LiveCubit>(context).deleteFromFavourite(
                channal: channals[index],
              );
            },
            onLongPress: () {
              BlocProvider.of<LiveCubit>(context).addToFavourite(
                channal: channals[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
