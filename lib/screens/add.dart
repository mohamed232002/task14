import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Add1 extends StatefulWidget {
   Add1({Key? key}) : super(key: key);

  @override
  State<Add1> createState() => _Add1State();
}

class _Add1State extends State<Add1> {
  int? _selected;
  DateTime selectedDate = DateTime.now();
  TimeOfDay initialTime = TimeOfDay.now();
  String selected = '';
  TextEditingController taskTittle = TextEditingController();
  TextEditingController taskNote = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
              children: [
                Image.asset('assets/Header.png'),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Taske Tittle', style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        TextField(
                          controller: taskTittle,
                          decoration: InputDecoration(
                          hintText: 'Taske Tittle',
                          filled: true,
                          fillColor: Colors.white,
                        ),),
                        SizedBox(height: 26,),
                        Row(
                          children: [
                            Text('Catogroy', style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),),
                            _icon(0, text: "Task", icon: Icons.face,image: 'assets/images/Task.png'),
                            _icon(1, text: "Event", icon: Icons.face,image: 'assets/images/Event.png'),
                            _icon(2, text: "Goal", icon: Icons.face,image: 'assets/images/Goal.png'),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Expanded(child:
                              Column(
                                children: [
                                  Text('Data', style: TextStyle(
                                      fontSize: 17, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  TextField(
                                    readOnly: true,
                                    controller: TextEditingController(
                                        text: DateFormat.yMMMMd('en_US')
                                            .format(selectedDate)),
                                    decoration: InputDecoration(
                                    suffixIcon: IconButton(icon: Icon(Icons.date_range)
                                    ,onPressed: () async {DateTime? picked = await showDatePicker(
                                            context: context,
                                            initialDate: selectedDate,
                                            firstDate: DateTime(2015, 8),
                                            lastDate: DateTime(2101));
                                        selectedDate = picked!;setState(() {

                                        });}),
                                    hintText: 'Taske Tittle',
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),),
                                ],
                              ),

                            ),
                            Expanded(child:
                            Column(
                              children: [
                                Text('Time', style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                TextField(
                                  readOnly: true,
                                  controller: TextEditingController(
                                      text: DateFormat.jm('en_US').format(DateTime(
                                          selectedDate.year,
                                          selectedDate.month,
                                          selectedDate.day,
                                          initialTime.hour,
                                          initialTime.minute))),
                                  decoration: InputDecoration(
                                  suffixIcon: IconButton(icon: Icon(Icons.access_time_filled_rounded)
                                      ,onPressed: () async {
                                    TimeOfDay? pickedTime = await showTimePicker(
                                          context: context, initialTime: initialTime);
                                      initialTime = pickedTime!;
                                  setState(() {

                                  });}),
                                  hintText: 'Taske Tittle',
                                  filled: true,
                                  fillColor: Colors.white,

                                ),),
                              ],
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26,),
                        Column(
                          children: [
                            Text(' Note', style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            TextField(
                              controller: taskNote,
                              maxLines: 8,
                              decoration: InputDecoration(
                              hintText: 'Note',
                              filled: true,
                              fillColor: Colors.white,
                            ),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),

              ]

          ),
        ),
      floatingActionButton: Container(
        width: 350,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(40),

        ),
        child:FloatingActionButton(
          onPressed: () {
             var task= {
               'icon': '${getImagePath(_selected!)}',
               'titaltask' : '${taskTittle.text} ',
               'tasktime' :'${ DateFormat.jm('en_US').format(DateTime(
             selectedDate.year,
             selectedDate.month,
             selectedDate.day,
             initialTime.hour,
             initialTime.minute))}'
             };
            Navigator.pop(context,task);
            // Do something when the button is pressed
          },
          child: Text('Save'),
          backgroundColor: Colors.blue,
        ),
      ),


    );

  }
  String getImagePath(int type) {
    switch (type) {
      case 0:
        return 'assets/images/Task.png';
      case 1:
        return 'assets/images/Event.png';
      case 2:
        return 'assets/images/Goal.png';
      default:
        return 'assets/images/Task.png';
    }
  }
  Widget _icon(int index, {required String text, required IconData icon,required String image,}) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkResponse(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset(image,
              //color: _selected == index ? Color(0x33ff0000) : null,
            ),
            Text(text, style: TextStyle(color: _selected == index ? Colors.red : null)),
          ],
        ),
        onTap: () => setState(
              () {
            _selected = index;
          },
        ),
      ),
    );
  }

}