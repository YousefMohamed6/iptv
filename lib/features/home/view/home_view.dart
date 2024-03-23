import 'package:flutter/material.dart';
import 'package:iptv/core/widgets/back_ground.dart';
import 'package:iptv/features/home/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String rountePath = "/Home";
  static const String rounteName = "Home";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Background(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: HomeViewBody(),
        ),
      ),
    );
  }
}
