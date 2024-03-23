import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/show_message.dart';
import 'package:iptv/features/download/views/download_view.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';

class LoginListener extends StatelessWidget {
  const LoginListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSucess) {
          BlocProvider.of<HomeCubit>(context).loadData();
          context.push(DownloadView.routePath);
          ShowMessage.snackBar(context, msg: state.successMessage);
        } else if (state is LoginFailure) {
          ShowMessage.snackBar(context, msg: state.exceptionMessage);
        } else if (state is UnselectedProvider) {
          ShowMessage.show(msg: 'Please Select your Provider');
        }
      },
      child: child,
    );
  }
}
