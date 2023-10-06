import 'package:flutter/material.dart';

class Completed extends StatelessWidget {

 String text;
 var icon;
 Completed({required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child:
      Row(
        children: [
          Icon(icon),
          Text(text,style: TextStyle(fontSize: 30),),


          Checkbox(value: false, onChanged: (value) =>BoxConstraints.tight(Size(20, 50)) ,)

        ],

      ),
    );
  }
}
