import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawer Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      drawer: const Drawer(),
    );
  }
}
