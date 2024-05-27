import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_1.2.0/widgets/drawer_item.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key, required this.drawerItem});

  final DrawerItem drawerItem;

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
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
            MediaQuery.of(context).size.width < 480
                ? Icon(widget.drawerItem.icon, size: 46.0)
                : Icon(widget.drawerItem.icon, size: 60.0),
            Text(
              widget.drawerItem.title,
              style: MediaQuery.of(context).size.width < 480
                  ? const TextStyle(fontSize: 32.0, fontWeight: FontWeight.w300)
                  : const TextStyle(
                      fontSize: 48.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
