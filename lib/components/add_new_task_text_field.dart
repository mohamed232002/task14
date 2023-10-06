import 'package:flutter/material.dart';
class AddNewTask extends StatelessWidget {
  String text ;
    Icon ? icon ;
  AddNewTask({this.icon,super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      textDirection: TextDirection.ltr,
      style: const TextStyle(fontSize: 15,color: Colors.black),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.grey,)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.grey)),
        hintText: text ,
        hintStyle: const TextStyle(fontSize: 15),
        hintTextDirection: TextDirection.ltr,
        suffixIcon: icon,

      ),

    );


  }
}
/*TextFormField(
      textDirection: TextDirection.ltr,
      style: const TextStyle(fontSize: 15,color: Colors.black),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.grey,)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.grey)),
        hintText: text ,
        hintStyle: const TextStyle(fontSize: 15),
        hintTextDirection: TextDirection.ltr,
        suffixIcon: icon,

      ),

    );*/