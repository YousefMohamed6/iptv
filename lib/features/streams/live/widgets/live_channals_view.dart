import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/widgets/channals/channal_view.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class LiveChannalView extends StatelessWidget {
  const LiveChannalView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveCubit, LiveState>(
      builder: (context, state) {
        if (state is SearchFinsh) {
          return ChannallView(
            channals: state.channals,
          );
        } else if (state is EmptySearch) {
          return const ChannallView(
            channals: [],
            text: "Not Found",
          );
        } else if (state is GetFavouriteSuccess) {
          return ChannallView(
            channals: state.channal,
          );
        }
        return ChannallView(
          channals: BlocProvider.of<LiveCubit>(context).liveChannals,
        );
      },
    );
  }
}
