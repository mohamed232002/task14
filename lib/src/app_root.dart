import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/cubit/todo_cubit.dart';
import 'package:todo/screens/home_screen.dart';

import '../screens/add.dart';
import '../screens/todo_screen.dart';



class AppRoot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {return TodoCubit();} )
      ],
      child: (  MaterialApp(
        home:HomePage()
      )),
    );
  }

}