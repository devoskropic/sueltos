import 'package:flutter/material.dart';
import 'package:sueltos/versions/v_0.1.0/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return MaterialApp(
      theme: appTheme(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData appTheme() {
    return ThemeData(
      // primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(
        elevation: 5,
        color: Colors.deepPurpleAccent,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      drawerTheme: const DrawerThemeData(
        // backgroundColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
    );
  }
}
