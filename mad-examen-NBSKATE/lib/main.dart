import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/components/navbar.dart';
import 'package:thuis_gemaakt/pages/LandingPage.dart';
import 'package:thuis_gemaakt/pages/Gerechten.dart';
import 'package:thuis_gemaakt/pages/FreeGrechten.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({super.key});
  int _currentPageIndex = 0;

  final List _pages = [
    const LandingPage(),
    const Gerechten(),
  ];

  void _setCurrentPageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thuis Gemaakt',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(244, 226, 222, 0),
          primarySwatch: Colors.green),
      home: Scaffold(
        body: _pages[_currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: _currentPageIndex,
          onTap: _setCurrentPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profiel',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.food_bank,
              ),
              label: 'Gerechten',
            ),
          ],
        ),
      ),
    );
  }
}
