import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/download/views/widgets/download_view_body.dart';

class DownloadView extends StatelessWidget {
  const DownloadView({super.key});
  static const String routePath = "/Download";
  static const String routeName = "Download";
  @override
  Widget build(BuildContext context) {
  return const SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        body: DownloadViewbody(),
      ),
    );
  }
}
