import 'package:flutter/material.dart';

import 'package:sueltos/presentation/themes/app_theme.dart';
import 'package:sueltos/versions/v_1.0.0/pages/home_page.dart';

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
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
