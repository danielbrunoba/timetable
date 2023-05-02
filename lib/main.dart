import 'package:flutter/material.dart';
import 'package:timetable/pages/account.dart';
import 'package:timetable/pages/my_jobs.dart';
import 'package:timetable/pages/my_studies.dart';
import 'package:timetable/pages/pomodoro_timer.dart';
import 'package:timetable/pages/settings.dart';
import 'package:timetable/pages/trash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gerenciador de Projetos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gerenciador de Projetos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Gerenciador de Projetos'),
      ),
      drawer: Builder(
          builder: (context) {
            return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const UserAccountsDrawerHeader(
                    accountName: Text('Daniel'),
                    accountEmail: Text('daniel@exemplo.com'),
                    currentAccountPicture: CircleAvatar(
                      child: Text("D"),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person, color: Colors.black),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {return const Account();}),),
                    title: const Text('Conta'),
                    subtitle: const Text('Gerencie as preferências do seu perfil.'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.book, color: Colors.green,),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {return const MyStudies();}),),
                    title: const Text('Estudos'),
                    subtitle: const Text('Gerencie sua rotina de estudos.'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.work, color: Colors.blueAccent,),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {return const MyJobs();}),),
                    title: const Text('Projetos'),
                    subtitle: const Text('Gerencie seus projetos.'),

                  ),
                  ListTile(
                    leading: const Icon(Icons.timer, color: Colors.deepOrangeAccent,),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {return const PomodoroTimer();}),),
                    title: const Text('Temporizador Pomodoro'),
                    subtitle: const Text('Gerencie seu tempo de uma forma saudável.'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.delete, color: Colors.red,),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {return const Trash();}),),
                    title: const Text('Lixeira'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings, color: Colors.black,),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {return const Settings();}),),
                    title: const Text('Ajustes'),
                    subtitle: const Text('Gerencie as configurações sobre sua conta.'),
                  ),
                ],
              ),
            );
          }
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

