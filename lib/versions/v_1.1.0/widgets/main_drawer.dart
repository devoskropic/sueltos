import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sueltos/versions/v_1.1.0/widgets/drawer_item.dart';
import 'package:sueltos/versions/v_1.1.0/widgets/menu_options.dart';
import 'package:sueltos/versions/v_1.1.0/pages/first_screen.dart';
import 'package:sueltos/versions/v_1.1.0/pages/home_page.dart';
import 'package:sueltos/domain/providers/drawer_provider.dart';

class MainDrawer extends StatelessWidget {
  // int? selectedIndex;
  final List<DrawerItem> drawerItems;

  const MainDrawer({super.key, required this.drawerItems});

  getDrawerItemScreen(int index) {
    return FirstScreen(drawerItem: drawerItems[index]);
  }

  onSelectItem(int index, DrawerProvider provider, BuildContext context) {
    provider.onDrawerTap(index);
    Navigator.of(context).pop(); // close the drawer

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(
          selectedIndex: provider.selectedIndex,
          drawerItem: drawerItems[index],
        ),
        // builder: (context) => getDrawerItemScreen(index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<DrawerProvider>();
    List<Widget> drawerOptions = [];

    for (var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];
      drawerOptions.add(
        MenuOption(
          title: d.title,
          leading: Icon(d.icon),
          selected: i == appState.selectedIndex,
          onTap: () => onSelectItem(i, appState, context),
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
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/images/girl_08.jpg'),
        backgroundColor: Colors.transparent,
      ),
      accountName: Text(
        "Lucy",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      ),
      accountEmail: Text(
        "devilish@gmail.com",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pallets.jpg'),
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
