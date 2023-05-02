import 'package:flutter/material.dart';
import '../pages/account.dart';
import '../pages/my_jobs.dart';
import '../pages/my_studies.dart';
import '../pages/pomodoro_timer.dart';
import '../pages/settings.dart';
import '../pages/trash.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/account': (context) => const Account(),
        '/my_studies': (context) => const MyStudies(),
        '/my_jobs': (context) => const MyJobs(),
        '/pomodoro_timer': (context) => const PomodoroTimer(),
        '/settings': (context) => const Settings(),
        '/trash': (context) => const Trash(),
      },
    ),
  );
}
