import 'package:flutter/widgets.dart';
import 'package:iptv/features/home/view/widgets/amazon_card.dart';
import 'package:iptv/features/home/view/widgets/kids_card.dart';
import 'package:iptv/features/home/view/widgets/live_card.dart';
import 'package:iptv/features/home/view/widgets/movies_card.dart';
import 'package:iptv/features/home/view/widgets/netflix_card.dart';
import 'package:iptv/features/home/view/widgets/serise_card.dart';
import 'package:iptv/features/home/view/widgets/shahid_card.dart';
import 'package:iptv/features/home/view/widgets/tops_card.dart';

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
