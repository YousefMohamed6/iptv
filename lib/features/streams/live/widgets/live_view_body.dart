import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';
import 'package:iptv/features/streams/live/widgets/live_categorys_view.dart';
import 'package:iptv/features/streams/live/widgets/live_channals_view.dart';
import 'package:iptv/features/streams/live/widgets/live_head_view.dart';

class LiveViewBody extends StatelessWidget {
  const LiveViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveCubit, LiveState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 16),
            const LiveHeadView(),
            const SizedBox(height: 16),
            Flexible(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Row(
                  children: [
                    const LiveCategoriesView(),
                    const LiveChannalView(),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Center(
                              child: Image.asset(
                                AssetsManager.livePlayer,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              "Bein Sport FHD 1",
                              style: StyleManager.textStyle18,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              "04:00 PM - 07:20 PM Real Madrid vs Barcelona",
                              style: StyleManager.textStyle14.copyWith(
                                color: ColorManager.yollew,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text("07:20 PM - 11:00 PM Russia vs Egypt",
                                style: StyleManager.textStyle14),
                          ],
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: VlcPlayerView(),
                    // ),
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
