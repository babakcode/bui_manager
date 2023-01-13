import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final Color fillColor;
  final IconButton? suffixIcon;
  final TextInputType? keyboardType;
  const AppTextField({Key? key, required this.hintText, this.fillColor = Colors.transparent, this.suffixIcon, this.keyboardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
            hintText: hintText,
            fillColor: fillColor,
            suffixIcon: suffixIcon,
            filled: true),
      ),
    );
  }
}
