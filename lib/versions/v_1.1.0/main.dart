import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sueltos/domain/providers/drawer_provider.dart';
import 'package:sueltos/presentation/themes/app_theme.dart';
import 'package:sueltos/versions/v_1.1.0/widgets/drawer_item.dart';
import 'package:sueltos/versions/v_1.1.0/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return ChangeNotifierProvider(
      create: (_) => DrawerProvider(),
      builder: (context, _) {
        return MaterialApp(
          theme: appTheme(),
          home: HomePage(
            selectedIndex: context.watch<DrawerProvider>().selectedIndex,
            drawerItem: DrawerItem("Home", Icons.home),
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
