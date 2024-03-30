import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';

class VlcPlayerView extends StatefulWidget {
  const VlcPlayerView({
    super.key,
  });

  @override
  State<VlcPlayerView> createState() => _VlcPlayerViewState();
}

class _VlcPlayerViewState extends State<VlcPlayerView> {
  @override
  void dispose() async {
    super.dispose();
    await BlocProvider.of<HomeCubit>(context)
        .playerController
        .stopRendererScanning();
    await BlocProvider.of<HomeCubit>(context).playerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: VlcPlayer(
          controller: BlocProvider.of<HomeCubit>(context).playerController,
          aspectRatio: 16 / 9,
          placeholder: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
