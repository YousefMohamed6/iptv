import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/view/home_view.dart';

class DownloadViewbody extends StatelessWidget {
  const DownloadViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is LoadingDataSuccess) {
          context.go(HomeView.rountePath);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(),
          Flexible(
            child: Image.asset(
              AssetsManager.download,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Please wait while Playlist is loading...',
            style: StyleManager.textStyle16.copyWith(
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.lexend,
            ),
          ),
          const SizedBox(height: 20),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
