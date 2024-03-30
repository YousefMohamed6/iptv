import 'package:flutter/widgets.dart';
import 'package:iptv/features/home/view/widgets/cards/amazon_card.dart';
import 'package:iptv/features/home/view/widgets/cards/kids_card.dart';
import 'package:iptv/features/home/view/widgets/cards/live_card.dart';
import 'package:iptv/features/home/view/widgets/cards/movies_card.dart';
import 'package:iptv/features/home/view/widgets/cards/netflix_card.dart';
import 'package:iptv/features/home/view/widgets/cards/serise_card.dart';
import 'package:iptv/features/home/view/widgets/cards/shahid_card.dart';
import 'package:iptv/features/home/view/widgets/cards/tops_card.dart';

class StreamsCardsView extends StatelessWidget {
  const StreamsCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          LiveCard(),
          SizedBox(width: 16),
          MoviesCard(),
          SizedBox(width: 16),
          SeriseCard(),
          SizedBox(width: 16),
          ShahidCard(),
          SizedBox(width: 16),
          NetFlixCard(),
          SizedBox(width: 16),
          KidsCard(),
          SizedBox(width: 16),
          AmazonCard(),
          SizedBox(width: 16),
          TopsCard(),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
