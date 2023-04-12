import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/LandingPage.dart';
import 'package:thuis_gemaakt/components/navbar.dart';

class GerechtDetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const GerechtDetailPage({
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              image,
              width: 320, // 50% of original width
              height: 300, // 50% of original height
            ),
          ),
          SizedBox(
            width: 330,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              description,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
