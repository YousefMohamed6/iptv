import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iptv/core/uitls/simple_observer.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/login/models/user_model.dart';
import 'package:iptv/my_app.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<ChannalModel>(ChannalModelAdapter());
  await Hive.openBox<ChannalModel>('channal');
  Hive.registerAdapter<CategoryModel>(CategoryModelAdapter());
  await Hive.openBox<CategoryModel>('lock');
  Hive.registerAdapter<UserModel>(UserModelAdapter());
  await Hive.openBox<UserModel>('user');
  runApp(MyApp());
  Bloc.observer = SimpleBlocObServer();
}
