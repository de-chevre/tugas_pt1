import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  // const HomePage({super.key});

  List img = [
    'assets/images/asparagus.jpg',
    'assets/images/beans.jpg',
    'assets/images/beef.jpg',
    'assets/images/bread.jpg',
    'assets/images/flat-lay.jpg',
    'assets/images/fried-rice.jpg',
    'assets/images/hors-doeuvre.jpg',
    'assets/images/salmon.jpg',
    'assets/images/spaghetti.jpg',
    'assets/images/tacos.jpg',
  ];

  NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FULL COURSE MENU'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: img.length,
          itemBuilder: (BuildContext context, index) {
            return Row(
              children: <Widget>[
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  img[index],
                  height: 500,
                  width: 250,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('next'),
        icon: const Icon(Icons.arrow_right),
      ),
    );
  }
}
