import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: theme.colorScheme.primary,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              child: Image.asset('images/not-found.png'),
            ),
            // Text(
            //   'We are working on this page.',
            //   style: TextStyle(
            //       color: theme.colorScheme.primary,
            //       fontSize: 20,
            //       fontWeight: FontWeight.w600),
            // )
          ],
        ),
      ),
    );
  }
}
