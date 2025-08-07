import 'package:flutter/material.dart';
import 'package:hrastore_rahman/screens/profilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  final List<Widget> _halaman = const [
    profilpage(),
    Center(
      child: Text('Ini Hakaman Bookmark'),
    ),
    Center(
      child: Text('Ini Halaman Cart'),
    ),
    profilpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HRA Store'),
      ),
      body: _halaman[_selectedindex],
      bottomNavigationBar: NavigationBar(
          animationDuration: const Duration(
            milliseconds: 300,
          ),
          selectedIndex: _selectedindex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedindex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
              label: 'Beranda',
            ),
            NavigationDestination(
                icon: Icon(Icons.bookmark_border_outlined),
                selectedIcon: Icon(Icons.bookmark_rounded),
                label: 'bookmark'),
            NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined),
                selectedIcon: Icon(Icons.shopping_bag),
                label: 'cart'),
            NavigationDestination(
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded),
                label: 'profile'),
          ]),
    );
  }
}
