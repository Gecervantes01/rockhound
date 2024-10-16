import 'package:flutter/material.dart';

import 'components/collection.dart';
import 'components/bottom_nav.dart';

/// The Widget that configures your application.
class Home extends StatelessWidget {
  const Home({super.key,});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final appBarHeight = (screenHeight * 0.08);
    final collectionHeight = (screenWidth / 1.7);


      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'RockHound',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              letterSpacing: 2
            ),
          ),
          toolbarHeight: appBarHeight,
        ),
        body: Column( // Use Column to stack the sections
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          const Column(
            children: [
              CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('./assets/images/Rocco.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                child: Text(
                  'Woof! Heres a fun fact',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const Spacer(flex: 4,),
          // Rock Collection section
          SizedBox(
            height: collectionHeight,
            child: const Collection(),
          ),
          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
        bottomNavigationBar: const BottomNav(),
    );
  }
}
