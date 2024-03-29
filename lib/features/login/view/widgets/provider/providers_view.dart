import 'package:flutter/material.dart';
import 'package:iptv/features/login/models/provider_model.dart';
import 'package:iptv/features/login/view/widgets/provider/provider_item.dart';

class ProvidersView extends StatelessWidget {
  const ProvidersView({super.key, required this.allProvider});
  final List<ProviderModel> allProvider;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: allProvider.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          childAspectRatio: 0.64,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 14.0,
        ),
        itemBuilder: (context, index) {
          return ProviderItem(
            provider: allProvider[index],
          );
        },
      ),
    );
  }
}
