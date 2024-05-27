import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_1.2.0/widgets/drawer_item.dart';
import 'package:sueltos/versions/v_1.2.0/widgets/stateless_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, this.selectedIndex});

  final int? selectedIndex;

  final drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("Aeroplane", Icons.local_airport),
    DrawerItem("Coffee", Icons.local_cafe),
    DrawerItem("Pizza", Icons.local_pizza)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      drawer: selectedIndex == null
          ? StatelessDrawer(
              selectedIndex: -1,
              drawerItems: drawerItems,
            )
          : StatelessDrawer(
              selectedIndex: selectedIndex!,
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
