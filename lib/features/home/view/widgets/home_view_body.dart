import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iptv/features/home/view/widgets/head_view.dart';
import 'package:iptv/features/home/view/widgets/strams_cards_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeadView(),
        StreamsCardsView(),
      ],
    );
  }
}
