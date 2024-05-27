import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({
    super.key,
    required this.title,
    required this.leading,
    required this.selected,
    required this.onTap,
  });
  final String title;
  final Icon leading;
  final bool selected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      onTap: onTap,
      selected: selected,
      selectedTileColor: Colors.amberAccent,
    );
  }
}
