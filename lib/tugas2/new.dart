import 'package:flutter/material.dart';
import 'package:tugas_pt1/tugas2/food_model.dart';
import 'package:tugas_pt1/tugas2/page2.dart';

class NewMenu extends StatefulWidget {
  const NewMenu({super.key});

  @override
  State<NewMenu> createState() => _NewMenuState();
}

class _NewMenuState extends State<NewMenu> {
  // const NewMenu({super.key});
  final List<FoodModel> food = [
    FoodModel(
        image: 'assets/images/asparagus.jpg',
        title: "Asparagus",
        price: "Rp. 50.000"),
    FoodModel(
        image: 'assets/images/beans.jpg',
        title: "Asparagus",
        price: "Rp. 50.000"),
    FoodModel(
        image: 'assets/images/salmon.jpg',
        title: "Asparagus",
        price: "Rp. 50.000"),
    FoodModel(
        image: 'assets/images/salmon.jpg',
        title: "Asparagus",
        price: "Rp. 50.000"),
    FoodModel(
        image: 'assets/images/salmon.jpg',
        title: "Asparagus",
        price: "Rp. 50.000"),
    FoodModel(
        image: 'assets/images/salmon.jpg',
        title: "Asparagus",
        price: "Rp. 50.000"),
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Settings',
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FULL COURSE MENU'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2,
          ),
          shrinkWrap: true,
          itemCount: food.length,
          itemBuilder: (BuildContext context, int index) {
            var fooding = food[index];
            return Image.asset(
              fooding.image,
              height: 250,
              width: 500,
            );
          },
        ),
        // ListView.builder(
        //   scrollDirection: Axis.vertical,
        //   physics: const BouncingScrollPhysics(),
        //   shrinkWrap: true,

        //   itemCount: food.length,
        //   itemBuilder: (BuildContext context, index) {
        //     var fooding = food[index];
        //     return Column(
        //       children: <Widget>[
        //         const SizedBox(
        //           height: 8,
        //         ),
        //         Image.asset(
        //           fooding.image,
        //           height: 250,
        //           width: 500,
        //         ),
        //         Text(fooding.title),
        //         Text(fooding.price),
        //       ],
        //     );
        //   },
        // ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NextPage()));
        },
        label: const Text('next'),
        icon: const Icon(Icons.arrow_right),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
