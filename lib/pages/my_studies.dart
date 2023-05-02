import 'package:flutter/material.dart';

class MyStudies extends StatefulWidget {
  const MyStudies({super.key});

  @override
  State<MyStudies> createState() => _MyStudiesState();
}

class _MyStudiesState extends State<MyStudies> {
  List<String> listOfStudies = [];

  @override
  Widget build(BuildContext context) {
    listOfStudies.add('Dart');
    listOfStudies.add('Flutter');
    listOfStudies.add('Functions');


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Meus Estudos'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Dart'),
            subtitle: const Text('Estudo focado na linguagem Dart.'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Flutter'),
            subtitle: const Text('Estudo focado no framework Flutter.'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}