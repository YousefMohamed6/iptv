import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/show_message.dart';
import 'package:iptv/features/download/views/download_view.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';

class LoginListener extends StatelessWidget {
  const LoginListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSucess) {
          ShowMessage.show(msg: state.successMessage);
          context.go(DownloadView.routePath);
        }
        if (state is LoginFailure) {
          ShowMessage.show(msg: state.exceptionMessage);
        }
        if (state is UnselectedProvider) {
          ShowMessage.show(msg: 'Please Select your Provider');
        }
        if (state is GetAllProvidersFailure) {
          ShowMessage.show(msg: state.exceptionMessage);
        }
      },
      child: child,
    );
  }
}
