import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/view/home_view.dart';

class DownloadListener extends StatelessWidget {
  const DownloadListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is LoadingDataSuccess) {
            context.go(HomeView.rountePath);
          }
        },
        child: child);
  }
}