import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/simple_observer.dart';
import 'package:iptv/my_app.dart';

void main() {
  runApp(MyApp());
  Bloc.observer = SimpleBlocObServer();
}
