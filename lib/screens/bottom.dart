import 'package:design_1/config/colors.dart';
import 'package:design_1/screens/home.dart';
import 'package:flutter/material.dart';

class ScreenBottom extends StatefulWidget {
  const ScreenBottom({super.key});

  @override
  State<ScreenBottom> createState() => _ScreenBottomState();
}

class _ScreenBottomState extends State<ScreenBottom> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const ScreenHome(),
    const Icon(Icons.chat, size: 150),
    const Icon(Icons.person, size: 150),
  ];
  void _onItmeTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItmeTapped,
        backgroundColor: ColorConfig.secondaryColor,
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        iconSize: 30,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}
