// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class OsaDrawer extends StatelessWidget {
  const OsaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: 280,
      // elevation: 20.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return const SizedBox(
      height: 160,
      child: UserAccountsDrawerHeader(
        accountName: Text("Freya Ganttwell"),
        accountEmail: Text(
          "freya.gantt@gmail.com",
          style: TextStyle(fontSize: 12),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/girl_02.jpg'),
        ),
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/misty.jpg'),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.calendar_month),
          title: const Text("Agenda"),
          onTap: () {
            print("Agenda tapped");
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.add_task),
          title: const Text("Nueva cita"),
          onTap: () {
            print("Nueva cita tapped");
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.schedule),
          title: const Text("Editar horarios"),
          onTap: () {
            print("Editar Horarios tapped");
            Navigator.pop(context);
          },
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Divider(
            height: 1,
            color: Colors.black26,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined),
          title: const Text("Configuración"),
          onTap: () {
            print("Settings tapped");
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Cerrar sesión"),
          onTap: () {
            print("Cerrar Sesión tapped");
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
