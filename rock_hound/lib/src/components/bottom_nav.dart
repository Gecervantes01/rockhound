import 'package:flutter/material.dart';
import '../constants/styling_constants.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
      height: 60,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: BottomAppBar(
          color: NAVBAR_BG,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(3, (index) {
            final icons = [Icons.home, Icons.camera, Icons.chat];
              return IconButton(
                icon: Icon(icons[index]),
                color: _selectedIndex == index ? Colors.white : Colors.grey,
                onPressed: () => _onItemTapped(index),
              );
            }),
          ),
        ),
      ),
    );
  }
}