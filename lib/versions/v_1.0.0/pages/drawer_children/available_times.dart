import 'package:flutter/material.dart';
// import 'package:sueltos/widgets/main_drawer.dart';

class AvailableTimes extends StatelessWidget {
  const AvailableTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modificar horarios"),
        // leading: Icon(Icons.),
      ),
      // drawer: const MainDrawer(),
      body: const Center(
        child: Text("Porque no quiero trabajar en sábado"),
      ),
    );
  }
}
