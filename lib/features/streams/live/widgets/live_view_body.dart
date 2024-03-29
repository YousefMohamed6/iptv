import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';
import 'package:iptv/features/streams/live/widgets/live_categorys_view.dart';
import 'package:iptv/features/streams/live/widgets/live_channals_view.dart';
import 'package:iptv/features/streams/live/widgets/live_head_view.dart';
import 'package:iptv/features/streams/live/widgets/live_player.dart';

class LiveViewBody extends StatelessWidget {
  const LiveViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveCubit, LiveState>(
      builder: (context, state) {
        return Column(
          children: [
            const LiveHeadView(),
            const Expanded(child: FullView()),
            Flexible(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: const Row(
                  children: [
                    LiveCategoriesView(),
                    SizedBox(width: 4),
                    LiveChannalView(),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
