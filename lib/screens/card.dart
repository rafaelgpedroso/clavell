import 'package:clavell/screens/components/menu.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartão de crédito'),
      ),
      body: Center(
        child: Text('Card'),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}
