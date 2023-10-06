import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo/components/titel.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  static TodoCubit get(context) => BlocProvider.of(context);
  TodoCubit() : super(TodoInitial());
List active =[
  {
      'icon': 'assets/images/Event.png',
      'titaltask' : 'study lesson ',
      'tasktime' :'4.10pm'
  }
  ,
  {
    'icon': 'assets/images/Event.png',
    'titaltask' : 'study lesson ',
    'tasktime' :'4.10pm'
  }
  ,


];
  List inactive =[
    {
      'icon': 'assets/images/Event.png',
      'titaltask' : 'study lesson ',
      'tasktime' :'4.10pm'
    }
    ,
    {
      'icon': 'assets/images/Event.png',
      'titaltask' : 'study lesson ',
      'tasktime' :'4.10pm'
    }
    ,


  ];
List<Widget> bild_task (){
  List<Widget> taskes= [];
  for( final task in active ){
    taskes.add(title1 (enabled: true,ontap: (v){
      remove(v, active.indexOf(task));

    }, path: task['icon'],time:task['tasktime'] ,tital: task['titaltask'],  ));

  }

  return taskes ;

  }



  List<Widget> inbild_task (){
    List<Widget> taskes= [];
    for( final task in inactive ){
      taskes.add(title1  (enabled: false,ontap: (v){
        remove(v, inactive.indexOf(task));

      }, path: task['icon'],time:task['tasktime'] ,tital: task['titaltask'], ));

    }

    return taskes ;

  }

void remove (v, id){
  print(id);
  if (v == false){

    inactive.add(active[id]);
    active.removeAt(id);


  }
  else{
    active.add(inactive[id]);
    inactive.removeAt(id);

  }
  emit(build());
}
  void add (task){
  active.add(task);
  emit(build());
  }
}
