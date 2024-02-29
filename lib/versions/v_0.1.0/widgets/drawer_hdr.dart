import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_0.1.0/widgets/menu_options.dart';

class DrawerHdr extends StatelessWidget {
  const DrawerHdr({
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
      height: 120,
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/clean_w.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 3.0,
              left: 2.0,
              child: Text(
                "Other drawer title",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            )
          ],
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
