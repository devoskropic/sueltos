import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_0.1.0/widgets/menu_options.dart';

class NoStackDrawer extends StatelessWidget {
  const NoStackDrawer({
    super.key,
    this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      height: 100,
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/salon_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/babe.jpg'),
          ),
          title: Text(
            "Cute Girl",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            "My Love",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Column(
      children: [
        MenuOption(
          title: "Agenda",
          onTap: onTap,
          leading: const Icon(Icons.calendar_month),
        ),
        MenuOption(
          title: "Nueva cita",
          onTap: onTap,
          leading: const Icon(Icons.add_task),
        ),
        MenuOption(
          title: "Editar horarios",
          onTap: onTap,
          leading: const Icon(Icons.schedule),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Divider(
            height: 1,
            color: Colors.black26,
          ),
        ),
        MenuOption(
          title: "Configuracion",
          onTap: onTap,
          leading: const Icon(Icons.settings_outlined),
        ),
        MenuOption(
          title: "Cerrar Sesión",
          onTap: onTap,
          leading: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
