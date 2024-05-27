import 'package:flutter/material.dart';
// import 'package:sueltos/widgets/main_drawer.dart';

class NewAppointment extends StatelessWidget {
  const NewAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Añadir cita"),
        // leading: Icon(Icons.),
      ),
      // drawer: const MainDrawer(),
      body: const Center(
        child: Text("Agendameeee"),
      ),
    );
  }
}
