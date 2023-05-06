// ignore_for_file: prefer_const_constructors

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

class CustomTextfield extends StatelessWidget {
  final VoidCallback? onTap;
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;
  final bool? obscureText;
  final Widget? prefix;
  final int minLines;

  const CustomTextfield(
      {Key? key,
      this.onTap,
      required this.controller,
      required this.hintText,
      this.obscureText = false,
      this.maxLines = 1,
      this.minLines = 1,
      this.prefix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      minLines: minLines,
      maxLines: maxLines,
      obscureText: obscureText!,
      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefix,
          fillColor: Colors.transparent),
    );
  }
}
