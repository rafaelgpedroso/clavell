import 'package:clavell/screens/components/menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1200,00'),
      ),
      body: Center(
        child: Text('Home'),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}
