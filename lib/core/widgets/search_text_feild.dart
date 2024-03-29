import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/login/view/widgets/login/custom_form_filed.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class SearchTextFeiled extends StatelessWidget {
  const SearchTextFeiled({
    super.key,
    required this.channals,
    required this.searchCtrl,
  });

  final List<ChannalModel> channals;
  final TextEditingController searchCtrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CutomTextFormFiled(
        controller: searchCtrl,
        hintText: "Search",
        prefixIcon: const Icon(Icons.search),
        autovalidateMode: AutovalidateMode.disabled,
        onChanged: (word) {
          BlocProvider.of<LiveCubit>(context).search(
            word: word,
            channals: BlocProvider.of<LiveCubit>(context).liveChannals,
            categorys: BlocProvider.of<HomeCubit>(context).liveCategorys,
          );
        },
      ),
    );
  }
}
