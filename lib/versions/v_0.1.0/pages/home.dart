import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_0.1.0/widgets/imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // var colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text("Drawer Example"),
      ),
      // drawer: NoStackDrawer(
      //   onTap: () {
      //     Navigator.pop(context);
      //   },
      // ),
      drawer: const OsaDrawer(),
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
