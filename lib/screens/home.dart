import 'package:flutter/material.dart';
import 'package:hrastore_rahman/screens/halamanutama.dart';
import 'package:hrastore_rahman/screens/profilepage.dart';

class HomePage extends StatefulWidget {
  final String token;
  final int userId;

  const HomePage({super.key, required this.token, required this.userId});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  late final List<Widget> _halaman;

  @override
  void initState() {
    super.initState();
    _halaman = [
      HalamanUtama(token: widget.token, userId: widget.userId,),
      const Center(child: Text('Ini Halaman Bookmark'),),
      const profilpage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                icon: Icon(Icons.history_outlined),
                selectedIcon: Icon(Icons.history_rounded),
                label: 'Riwayat'),
            NavigationDestination(
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded),
                label: 'Profil'),
          ]),
    );
  }
}
