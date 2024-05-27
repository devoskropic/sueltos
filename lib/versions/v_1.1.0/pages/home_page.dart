import 'package:flutter/material.dart';

import 'package:sueltos/versions/v_1.1.0/widgets/drawer_item.dart';
import 'package:sueltos/versions/v_1.1.0/widgets/main_drawer.dart';
// import 'package:sueltos/versions/v_1.1.0/widgets/menu_options.dart';

class HomePage extends StatelessWidget {
  final int selectedIndex;
  final DrawerItem drawerItem;

  HomePage({super.key, required this.selectedIndex, required this.drawerItem});

  final drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("Aeroplane", Icons.local_airport),
    DrawerItem("Coffee", Icons.local_cafe),
    DrawerItem("Pizza", Icons.local_pizza)
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.secondaryContainer,
      appBar: AppBar(
        title: Text(drawerItem.title),
      ),
      drawer: MainDrawer(
        drawerItems: drawerItems,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MediaQuery.of(context).size.width < 480
                ? Icon(drawerItem.icon, size: 46.0)
                : Icon(drawerItem.icon, size: 60.0),
            Text(
              drawerItem.title,
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
