import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class ShowMessage {
  static void show({required String msg}) {
    ShowMessage._toast(msg: msg);
  }

  static void _toast({required String msg}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static void snackBar(BuildContext context, {required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: StyleManager.textStyle16.copyWith(
            color: Colors.white,
            fontFamily: FontFamily.lexend,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: ColorManager.background,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 125, vertical: 8),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        shape: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
