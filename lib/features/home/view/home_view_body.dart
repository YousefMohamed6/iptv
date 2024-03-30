import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iptv/features/home/view/widgets/cards/strams_cards_view.dart';
import 'package:iptv/features/home/view/widgets/head_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const HeadView(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.05,
        ),
        const StreamsCardsView(),
      ],
    );
  }
}
