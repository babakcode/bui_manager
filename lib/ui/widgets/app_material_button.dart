import 'package:flutter/material.dart';

class AppMaterialButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final double? height;
  final bool fullScreen;
  final String text;
  const AppMaterialButton({Key? key, this.onPressed, this.color, this.height, this.fullScreen = false, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? Colors.white,
      height: height ?? 46,
      minWidth: fullScreen? double.infinity : null,
      child: Text('data'),
    );
  }
}
