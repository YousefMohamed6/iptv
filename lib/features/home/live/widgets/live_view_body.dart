import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/home/home/cubit/home_cubit.dart';

class LiveViewBody extends StatelessWidget {
  const LiveViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: BlocProvider.of<HomeCubit>(context).allLive.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(color: Colors.grey),
        child: Row(
          children: [
            Text(
              BlocProvider.of<HomeCubit>(context).allLive[index].category.name,
            ),
            const SizedBox(width: 8),
            Text(
              BlocProvider.of<HomeCubit>(context)
                  .allLive[index]
                  .allChannel
                  .length
                  .toString(),
            ),
          ],
        ),
      ),
    );
  }
}
