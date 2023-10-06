import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/screens/add.dart';
import '../cubit/todo_cubit.dart';
class HomePage extends StatelessWidget {
   HomePage({super.key});
  bool selected = false;
  bool enabled = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, TodoState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var cubit = TodoCubit.get(context);
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: () {  },),
         backgroundColor: Color(0xff4A3780),
         title: Center(
           child: const Text("October 20, 2022",textAlign: TextAlign.center
             ,style: TextStyle(
             color: Colors.white,
             fontSize: 16,

           ),
        ),
         ) ,
       ),
       body:
          SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff4A3780)
                  ),
                  width: double.infinity,
                  height: 170,

                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(child: Text("My Todo List",style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),)),
                    ],

                  ),
                ),
                SingleChildScrollView(
                  reverse: true,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children:
                              cubit.bild_task(),


                          ),

                        ),
                        Padding(padding:EdgeInsets.symmetric(vertical: 26),child:
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Completed',style:
                          TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                        ), ),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: cubit.inbild_task(),

                          ),

                        ),

                        ElevatedButton(style: ElevatedButton.styleFrom(
                          //backgroundColor: Color(0xff4A3780),
                            fixedSize: Size(500, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11)
                            )
                        ),

                            onPressed: () async {
                              var map = await Navigator.push(context, MaterialPageRoute(builder: (context){return Add1();}));
                              if (map!=null){
                                cubit.add(map);

                              }
                            }, child: Text("Add New Task",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),)),
                      ],
                    ),
                  ),
                ),

              ],

            ),
          ),


        );
  },
);
  }
}

