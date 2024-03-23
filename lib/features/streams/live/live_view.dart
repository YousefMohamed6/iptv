import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';
import 'package:iptv/features/streams/live/widgets/live_view_body.dart';

class LiveView extends StatelessWidget {
  const LiveView({super.key});
  static const String routeName = 'Live';
  static const String routePath = '/Live';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LiveCubit()..getLocalData(),
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.background,
          body: LiveViewBody(),
        ),
      ),
    );
  }
}
