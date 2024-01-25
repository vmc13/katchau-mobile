import 'package:flutter/material.dart';
import 'package:katchau_mobile/presentation/home/business_page.dart';
import 'package:katchau_mobile/presentation/home/generate_receipt.dart';
import 'package:katchau_mobile/presentation/home/home.dart';
import 'package:katchau_mobile/presentation/home/load_page.dart';
import 'package:katchau_mobile/presentation/home/payment_page.dart';
import 'presentation/homepage.dart';
import 'presentation/login_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF383330)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/homepage':(context) => const HomePage(),
        '/home':(context) => const Home(),
        '/loadData':(context) => const LoadData(),
        '/business':(context) => const BusinessPage(),
        '/payment':(context) => const PaymentPage(),
        '/receipt':(context) => const GenerateReceipt(),
      },
    );
  }
}

