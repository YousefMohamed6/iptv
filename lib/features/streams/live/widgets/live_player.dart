import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/widgets/video%20player/vlc_player.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';

class FullView extends StatelessWidget {
  const FullView({super.key});
  static const String routePath = '/FullView';
  static const String routeName = '/FullView';
  @override
  Widget build(BuildContext context) {
    var url = BlocProvider.of<HomeCubit>(context).streamLink;
    return VlcPlayerView(url: url);
  }
}
