import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tugas_pt1/tugas2/homepage.dart';
import 'package:tugas_pt1/tugas3/new.dart';

class KatalogMenu extends StatefulWidget {
  const KatalogMenu({super.key});

  @override
  State<StatefulWidget> createState() => _KatalogMenu();
}

class _KatalogMenu extends State<KatalogMenu> {
  var _currentIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const NewMenu(),
    const Text('Index 2'),
    const Text('Index 3'),
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('KATALOG MENU'),
      // ),
      body: Center(child: _widgetOptions.elementAt(_currentIndex)),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Home'),
                selectedColor: Colors.purple),
            SalomonBottomBarItem(
                icon: const Icon(Icons.favorite),
                title: const Text('Favorite'),
                selectedColor: Colors.pink),
            SalomonBottomBarItem(
                icon: const Icon(Icons.search),
                title: const Text('Search'),
                selectedColor: Colors.orange),
            SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text('Profile'),
                selectedColor: Colors.teal),
          ]),
    );
  }
}
