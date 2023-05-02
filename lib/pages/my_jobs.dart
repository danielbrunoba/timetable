import 'package:flutter/material.dart';

class MyJobs extends StatelessWidget {
  const MyJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text('Meus Projetos'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Projetos'),
            subtitle: const Text('Descrição do Projeto.'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
