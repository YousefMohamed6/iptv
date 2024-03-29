import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/route_manager.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static const MyApp instance = MyApp._internal();
  factory MyApp() => instance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp.router(
        title: "IPTV",
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routerConfig: RouteManager.routConfig,
      ),
    );
  }
}
