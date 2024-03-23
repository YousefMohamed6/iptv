import 'package:flutter/material.dart';

class NetflixView extends StatelessWidget {
  const NetflixView({super.key});
  static const String routePath = "/Netflix";
  static const String routeName = "Netflix";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NetflixViewBody(),
    );
  }
}

class NetflixViewBody extends StatelessWidget {
  const NetflixViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
