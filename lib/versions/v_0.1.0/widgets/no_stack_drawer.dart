import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_0.1.0/widgets/drawer_options.dart';

class NoStackDrawer extends StatelessWidget {
  const NoStackDrawer({super.key, this.onTap});

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
      height: 110,
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/pallets.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListTile(
          // minVerticalPadding: 5.0,
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/girl_09.jpg'),
            radius: 40.0,
          ),
          title: Text(
            "Faye Lim",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            "your guide",
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
        DrawerOption(
          title: "Agenda",
          onTap: onTap,
          leading: const Icon(Icons.calendar_month),
        ),
        DrawerOption(
          title: "Nueva cita",
          onTap: onTap,
          leading: const Icon(Icons.add_task),
        ),
        DrawerOption(
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
        DrawerOption(
          title: "Configuracion",
          onTap: onTap,
          leading: const Icon(Icons.settings_outlined),
        ),
        DrawerOption(
          title: "Cerrar Sesión",
          onTap: onTap,
          leading: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
