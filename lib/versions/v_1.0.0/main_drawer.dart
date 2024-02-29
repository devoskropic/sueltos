import 'package:flutter/material.dart';
import 'package:sueltos/pages/imports.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: 280,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return const DrawerHeader(
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
              "A drawer title",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Home"),
          leading: const Icon(Icons.home),
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Agenda"),
          leading: const Icon(Icons.calendar_month),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Schedule(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Nueva Cita"),
          leading: const Icon(Icons.add_task),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NewAppointment(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Editar Horario"),
          leading: const Icon(Icons.schedule),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AvailableTimes(),
              ),
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.only(left: 6, right: 6),
          child: Divider(
            color: Colors.black26,
          ),
        ),
        ListTile(
          title: const Text("Cerrar Sesión"),
          leading: const Icon(Icons.logout),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
