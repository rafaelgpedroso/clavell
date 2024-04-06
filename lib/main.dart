import 'package:clavell/helpers/routes.dart';
import 'package:clavell/helpers/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Clavell());
}

class Clavell extends StatelessWidget {
  const Clavell({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clavell',
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
    );
  }
}
