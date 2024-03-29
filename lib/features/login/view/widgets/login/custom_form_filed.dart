import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class CutomTextFormFiled extends StatelessWidget {
  const CutomTextFormFiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obSecureText,
    this.onChanged,
    this.autovalidateMode,
  });
  final TextEditingController controller;
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool? obSecureText;
  final void Function(String)? onChanged;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: TextFormField(
        style: StyleManager.textStyle14,
        textAlign: TextAlign.center,
        controller: controller,
        obscureText: obSecureText ?? false,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        keyboardType: TextInputType.emailAddress,
        onFieldSubmitted: onChanged,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This Filed is Required';
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: const Color(0xffCECECE).withOpacity(0.3),
          filled: true,
          labelText: hintText,
          contentPadding: const EdgeInsets.all(4),
          labelStyle: StyleManager.textStyle14.copyWith(
            fontSize: MediaQuery.sizeOf(context).width * 0.016,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
    );
  }
}
