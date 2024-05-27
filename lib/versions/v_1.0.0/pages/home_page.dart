import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_1.0.0/widgets/main_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // var colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text("Widgets Sueltos"),
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Text("Open Drawer"),
          ),
        ),
      ),
    );
  }
}
