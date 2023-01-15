import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  final double? radius;
  final String title;
  final VoidCallback? onTap;
  final Color? color;
  final Icon icon;
  const AppListTile({Key? key, this.radius, required this.title,required this.icon, this.onTap , this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: color?? const Color(0xff6d768a),
      textColor: Colors.white,
      iconColor: Colors.white,
      onTap: onTap ?? (){},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 24)),
      title: Text(
        title,
      ),
      leading: icon,
    );
  }
}
