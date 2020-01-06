import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shipments")),
      drawer: Drawer(
        child: DrawerHeader(
          child: Text('Drawer Header'),
        ),
      ),
    );
  }
}
