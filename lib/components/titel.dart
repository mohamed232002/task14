import 'package:flutter/material.dart';

class Tital2 extends StatefulWidget {
   Tital2({
    Key? key,
    required this.enabled,
    required this.selected,
     required this.my_icon,
  }) : super(key: key);

  bool enabled;
  bool selected;
  var my_icon;

  @override
  State<Tital2> createState() => _Tital2State();
}

class _Tital2State extends State<Tital2> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: widget.enabled ,
      selected: widget.selected,
      onTap: () {
        setState(() {
          // This is called when the user toggles the switch.
          widget.selected = !widget.selected;
        });
      },
      // This sets text color and icon color to red when list tile is disabled and
      // green when list tile is selected, otherwise sets it to black.
      iconColor:
      MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.red;
        }
        if (states.contains(MaterialState.selected)) {
          return Colors.green;
        }
        return Colors.black;
      }),
      // This sets text color and icon color to red when list tile is disabled and
      // green when list tile is selected, otherwise sets it to black.
      textColor:
      MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.red;
        }
        if (states.contains(MaterialState.selected)) {
          return Colors.green;
        }
        return Colors.black;
      }),
      leading:  Icon ( widget.my_icon),
      title: const Text('Headline'),
      subtitle: Text('Enabled: ${widget.enabled}, Selected: ${widget.selected}'),
      trailing: Checkbox(
        onChanged: (bool? value) {
          // This is called when the user toggles the switch.
          setState(() {
            widget.enabled = value!;
          });
        },
        value: widget.enabled,
      ),
    );
  }
}


class title1 extends StatelessWidget {
   title1({
    Key? key,
    required this.enabled,
    required this.ontap,
    required this.path,
    required this.time,
    required this.tital,
  }) : super(key: key);

  final bool enabled;
String path ;
  String tital ;
  String time ;
 final void Function(bool?)? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: enabled,


      // This sets text color and icon color to red when list tile is disabled and
      // green when list tile is selected, otherwise sets it to black.
      iconColor:
      MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.red;
        }
        if (states.contains(MaterialState.selected)) {
          return Colors.green;
        }
        return Colors.black;
      }),
      // This sets text color and icon color to red when list tile is disabled and
      // green when list tile is selected, otherwise sets it to black.
      textColor:
      MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.red;
        }
        if (states.contains(MaterialState.selected)) {
          return Colors.green;
        }
        return Colors.black;
      }),
      leading: Image.asset(path),
      title:  Text(tital),
      subtitle: Text( time),
      trailing: Checkbox(
        onChanged: ontap,
        value: enabled,
      ),
    );
  }
}