import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_1.2.0/widgets/drawer_item.dart';
import 'package:sueltos/versions/v_1.2.0/widgets/stateless_drawer.dart';

class Pizza extends StatelessWidget {
  const Pizza({
    super.key,
    required this.selectedIndex,
    required this.drawerItems,
  });

  final int selectedIndex;
  final List<DrawerItem> drawerItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(drawerItems[selectedIndex].title)),
      drawer: StatelessDrawer(
        selectedIndex: selectedIndex,
        drawerItems: drawerItems,
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Go pick an option from the drawer!"),
          ],
        ),
      ),
    );
  }
}
