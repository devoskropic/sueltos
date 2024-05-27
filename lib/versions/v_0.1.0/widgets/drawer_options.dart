import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  const DrawerOption({
    super.key,
    required this.title,
    required this.onTap,
    required this.leading,
  });
  final String title;
  final Function()? onTap;
  final Icon leading;

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
    );
  }
}
