import 'package:flutter/material.dart';
import 'package:katchau_mobile/presentation/home/business_page.dart';
import 'package:katchau_mobile/presentation/home/home.dart';
import 'package:katchau_mobile/presentation/home/load_page.dart';
import 'package:katchau_mobile/presentation/home/payment_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    Widget currentPage;

    switch (currentPageIndex) {
      case 0:
        currentPage = const Home();
        break;
      case 1:
        currentPage = const   BusinessPage();
        break;
      case 2:
        currentPage = const LoadData();
        break;
      case 3:
        currentPage = const PaymentPage();
        break;
      default:
        currentPage = Container();
    }

    return Scaffold(
      body: currentPage,
      //BOTTOM NAVIGATION
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color(0xFFC78853),
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Icons.home),
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.business_center), label: 'Empresa'),
          NavigationDestination(icon: Icon(Icons.fire_truck), label: 'Carga'),
          NavigationDestination(
              icon: Badge(
                child: Icon(Icons.payment_rounded),
              ),
              label: 'Pagamento'),
        ],
      ),
    );
  }
}
