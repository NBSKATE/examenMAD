import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/LandingPage.dart';
import 'package:thuis_gemaakt/pages/gerecht_detail_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;
  // static const List navbody = [
  //   Icon(Icons.home, size: 50),
  //   Icon(Icons.search, size: 50),
  //   Icon(Icons.food_bank_rounded, size: 50),
  // ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
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
    );
  }
}
