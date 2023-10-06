import 'package:flutter/material.dart';
import '../components/build_listtile.dart';
import '../components/titel.dart';
import '../core/size_config.dart';
import 'Add_task.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();

}

class _TodoScreenState extends State<TodoScreen> {
  @override
  bool selected = false;
  bool enabled = true;
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Todo.png",
            width: SizeConfig.screenWidth! * 1,
          ),
          Positioned(
            top: 180,
            left: 20,
            child: Container(
              width: SizeConfig.screenWidth! * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child:  Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [

                    const CustomListTile(
                        imagePath: "assets/images/Task.png",
                        title: "Study lesson"),
                    const Divider(thickness: 1),
                    const CustomListTile(
                        imagePath: "assets/images/Goal.png",
                        title: "Run 5k",
                        subtitle: "4:00pm"),
                    const Divider(thickness: 1),
                    const CustomListTile(
                        imagePath: "assets/images/Event.png",
                        title: "Go to party",
                        subtitle: "10:00pm"),
                    SizedBox(height: 20,),

                    Tital2(enabled: enabled, selected: selected, my_icon:Icons.calendar_month ),
                    Tital2(enabled: enabled, selected: selected,my_icon: Icons.list_alt_sharp),

               // Comleted(text: 'Event',icon:Icons.calendar_month,),
                    // Completed(text: 'task',icon:Icons.list_alt_sharp,)
                  ],

                ),
              ),
            ),

          ),
          Positioned(
            bottom: 50,
            left: 80,
            child: SizedBox(
              width: SizeConfig.screenWidth! * 0.6,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  //backgroundColor:
                     // const Color(0xFF4A3780), // Set the background color
                ),
                child: const Text('Add new task'),
              ),
            ),
          ),
        ],

      ),

    );
  }
}


