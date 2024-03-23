import 'package:flutter/material.dart';
import 'package:iptv/features/login/models/provider_model.dart';
import 'package:iptv/features/login/view/widgets/provider_item.dart';

class ProvidersView extends StatelessWidget {
  const ProvidersView({super.key, required this.allProvider});
  final List<ProviderModel> allProvider;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: allProvider.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) {
        return ProviderItem(
          provider: allProvider[index],
        );
      },
    );
  }
}
