import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Minha Conta'),
      ),
      body: ListView(
        children:  [
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Perfil'),
            subtitle: const Text('Gerenciar sua conta'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}

