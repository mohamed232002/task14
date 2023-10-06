import 'package:flutter/material.dart';

import '../components/add_new_task_text_field.dart';
import '../components/category_icon.dart';
import '../components/my_text.dart';

class AddNewTaskScreen extends StatelessWidget{
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF1F5F9),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(image: AssetImage('assets/Header.png')),
              const SizedBox(height: 20,),
              MyText(size: 20, color: Colors.black, isBold: true, text: 'Task Title'),
             AddNewTask(text: 'Task Title'),
              const SizedBox(height: 30,),
              Row(
                children: [
                  MyText(size: 15, color: Colors.black, isBold: true, text: 'Category'),
                  const SizedBox(width: 30,),
                  CategoryIcon(containerColor:const Color(0xff92cbf5), iconColor: const Color(0xff194a66), icon:Icons.list_alt_sharp ),
                  const SizedBox(width: 20,),
                  CategoryIcon(containerColor:const Color(0xffe7e2f3), iconColor: const Color(0xff4a3780), icon:Icons.calendar_month ),
                  const SizedBox(width: 20,),
                  CategoryIcon(containerColor:const Color(0xfffef5d3), iconColor: const Color(0xff403100), icon:Icons.alarm_add ),

                ],
              ),
              const SizedBox(height: 20,),
           SizedBox(
             height: 50,
             child: Row(
               children: [
                 Column(
                   children: [
                     MyText(size: 15, color: Colors.black, isBold: true, text: 'Date'),
                     AddNewTask(text: 'Date',icon: const Icon(Icons.calendar_month,color: Color(0xff4a3780)),)
                   ],
                 ),
                Column(
                  children: [
                    MyText(size: 15, color: Colors.black, isBold: true, text: 'Time'),
                    AddNewTask(text: 'Time',icon: const Icon(Icons.alarm,color: Color(0xff4a3780)),)
                  ],
                )
                 ],
              ),
           ),
              const SizedBox(height: 30,),
              MyText(size: 25, color: Colors.black, isBold: true, text: 'Notes'),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: AddNewTask( text: 'Notes',),
              )

            ],
          ),
        ));
  }

}