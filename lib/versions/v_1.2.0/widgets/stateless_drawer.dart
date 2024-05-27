import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_1.2.0/pages/drawer_children/import.dart';
import 'package:sueltos/versions/v_1.2.0/widgets/drawer_item.dart';
import 'package:sueltos/versions/v_1.2.0/widgets/menu_options.dart';
import 'package:sueltos/versions/v_1.2.0/pages/import.dart';

class StatelessDrawer extends StatelessWidget {
  const StatelessDrawer(
      {super.key, required this.selectedIndex, required this.drawerItems});

  final int selectedIndex;
  final List<DrawerItem> drawerItems;

  getDrawerItemScreen(int index) {
    switch (index) {
      case 0:
        return HomePage(selectedIndex: index);
      // case 1:
      //   return Airplane(selectedIndex: index, drawerItems: drawerItems);
      case 2:
        return Coffee(selectedIndex: index, drawerItems: drawerItems);
      case 3:
        return Pizza(selectedIndex: index, drawerItems: drawerItems);
      default:
        return DefaultScreen(drawerItem: drawerItems[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    onSelectItem(int index) {
      Navigator.of(context).pop(); // close the drawer

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => getDrawerItemScreen(index),
        ),
      );
    }

    List<Widget> drawerOptions = [];

    for (var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];
      drawerOptions.add(
        MenuOption(
          title: d.title,
          leading: Icon(d.icon),
          selected: i == selectedIndex,
          onTap: () => onSelectItem(i),
        ),
      );
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildHeader(context),
          buildMenuItems(context, drawerOptions),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return const UserAccountsDrawerHeader(
      accountName: Text(
        "Devoskropic",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      ),
      accountEmail: Text(
        "dev.ddrx@gmail.com",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/grey.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context, List<Widget> drawerOptions) {
    return Column(
      children: [
        for (Widget item in drawerOptions) item,
      ],
    );
  }
}
