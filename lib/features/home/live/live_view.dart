import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/home/live/widgets/live_view_body.dart';

class LiveView extends StatelessWidget {
  const LiveView({super.key});
  static const String routeName = 'Live';
  static const String routePath = '/Live';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        body: LiveViewBody(),
      ),
    );
  }
}
