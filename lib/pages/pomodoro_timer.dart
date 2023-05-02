import 'package:flutter/material.dart';

class PomodoroTimer extends StatelessWidget {
  const PomodoroTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text('Pomodoro'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.timelapse),
            title: const Text('Pomodoro'),
            subtitle: const Text('Gerencie seu tempo de uma forma saudável.'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}