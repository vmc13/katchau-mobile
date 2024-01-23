import 'package:flutter/material.dart';

import 'pages/load_data_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katchau!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      initialRoute: '/dadosDaCarga',
      routes: {
        '/': (context) => const LoginPage(),
        '/dadosDaCarga':(context) => const LoadData()
      },
    );
  }
}

