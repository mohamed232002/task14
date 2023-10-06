import 'package:flutter/material.dart';
class CategoryIcon extends StatelessWidget {
  Color containerColor ;
  Color iconColor ;
  var icon ;

   CategoryIcon({required this.containerColor ,required this.iconColor,required this.icon,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40 ,width: 40,
      decoration: BoxDecoration(color: containerColor,
      shape: BoxShape.circle),
      child: Icon(icon ,color: iconColor),

    );
  }
}
