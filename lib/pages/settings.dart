import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Configurações'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.settings_applications),
            title: const Text('Preferências',),
            subtitle: const Text('Gerencie suas configurações.'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
