import 'package:flutter/material.dart';
import 'package:sueltos/presentation/widgets/main_drawer.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agenda"),
        // leading: Icon(Icons.),
      ),
      drawer: const MainDrawer(),
      body: const Center(child: Text("yup")),
    );
  }
}
