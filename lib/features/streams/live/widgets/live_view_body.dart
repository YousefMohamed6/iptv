import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/core/widgets/category_view.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class LiveViewBody extends StatelessWidget {
  const LiveViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveCubit, LiveState>(
      builder: (context, state) {
        return Row(
          children: [
            CategoryView(
              categories: BlocProvider.of<HomeCubit>(context).liveCategorys,
              onPressed: () {
                int id = BlocProvider.of<HomeCubit>(context).channalsId;
                BlocProvider.of<LiveCubit>(context).getLiveChannalsById(id: id);
              },
            ),
            ChannallView(
              channals: BlocProvider.of<LiveCubit>(context).liveChannals,
            ),
          ],
        );
      },
    );
  }
}

class ChannalViewItem extends StatelessWidget {
  const ChannalViewItem(
      {super.key, required this.name, this.imageUrl, required this.onPressed});
  final String name;
  final String? imageUrl;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Row(
        children: [
          imageUrl != null ? Image.network(imageUrl!) : const SizedBox(),
          Text(
            name,
            style: StyleManager.textStyle16.copyWith(
              fontFamily: FontFamily.lexend,
            ),
          )
        ],
      ),
    );
  }
}

class ChannallView extends StatelessWidget {
  const ChannallView({super.key, required this.channals});
  final List<ChannalModel> channals;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: channals.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Row(
            children: [
              Text(
                channals[index].name,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
