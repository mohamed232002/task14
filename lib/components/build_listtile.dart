import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String imagePath; // Required
  final String? title; // Optional
  final String? subtitle;

  const CustomListTile({
    super.key,
    required this.imagePath,
    this.title,
    this.subtitle,
  });

  @override
  State<CustomListTile> createState() => CustomListTileState();
}

class CustomListTileState extends State<CustomListTile> {
  bool selected = false;

  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: enabled,
      selected: selected,
      onTap: () {
        setState(() {
          // This is called when the user toggles the switch.
          selected = !selected;
        });
      },
      // This sets text color and icon color to red when list tile is disabled and
      // green when list tile is selected, otherwise sets it to black.
      iconColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
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
      textColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.red;
        }
        if (states.contains(MaterialState.selected)) {
          return Colors.green;
        }
        return Colors.black;
      }),
      leading: Image.asset(widget.imagePath),
      title: widget.title != null
          ? Text(
              widget.title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          : null,
      subtitle: widget.subtitle != null
          ? Text(widget.subtitle!,
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold))
          : null,
      trailing: Checkbox(
        activeColor: const Color(0xff4A3780),
        onChanged: (bool? value) {
          // This is called when the user toggles the checkbox.
          setState(() {
            enabled = value ?? false;
          });
        },
        value: enabled,
      ),
    );
  }
}
