import 'package:flutter/material.dart';

class Trash extends StatelessWidget {
  const Trash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text('Lixeira'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.error),
            title: const Text('Lixeira'),
            subtitle: const Text('Lixeira'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
