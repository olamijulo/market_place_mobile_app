// ignore_for_file: prefer_const_constructors

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

class CustomDropdown extends StatelessWidget {
  final VoidCallback? onTap;
  final void Function(dynamic)? onChanged;
  final String hintText;
  final bool? obscureText;
  final Widget? suffix;
  final Widget? icon;
  final List<DropdownMenuItem<String>>? items;

  const CustomDropdown(
      {Key? key,
      this.onTap,
      required this.onChanged,
      required this.hintText,
      this.items,
      this.obscureText = false,
      this.suffix,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      items: items,
      onChanged: onChanged,
      icon: icon,
      decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffix,
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0)),
    );
  }
}
