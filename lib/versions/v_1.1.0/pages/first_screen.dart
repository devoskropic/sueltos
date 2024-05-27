import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_1.1.0/widgets/drawer_item.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key, required this.drawerItem});

  final DrawerItem drawerItem;

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drawerItem.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.drawerItem.icon,
              size: 54.0,
            ),
            Text(
              widget.drawerItem.title,
              style:
                  const TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
