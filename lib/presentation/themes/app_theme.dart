import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      elevation: 5,
      color: Colors.deepPurpleAccent,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    drawerTheme: const DrawerThemeData(
      // backgroundColor: Colors.transparent,
      backgroundColor: Colors.white60,
    ),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
  );
}
