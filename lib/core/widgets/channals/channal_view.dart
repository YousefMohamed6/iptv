import 'package:flutter/material.dart';
import 'package:iptv/core/widgets/channals/channal_list_view.dart';
import 'package:iptv/core/widgets/channals/not_found_text.dart';
import 'package:iptv/core/widgets/custom_table_view.dart';
import 'package:iptv/features/home/model/channal_model.dart';

class ChannallView extends StatelessWidget {
  const ChannallView({
    super.key,
    required this.channals,
    this.text,
  });
  final List<ChannalModel> channals;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return CustomTableView(
      child: Column(
        children: [
          text != null
              ? const NotFoundText()
              : ChannalsListView(
                  channals: channals,
                ),
        ],
      ),
    );
  }
}
