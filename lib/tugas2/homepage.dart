import 'package:flutter/material.dart';
import 'package:tugas_pt1/tugas3/food_model.dart';
import 'package:tugas_pt1/tugas2/page2.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  // List img = [
  //   'assets/images/asparagus.jpg',
  //   'assets/images/beans.jpg',
  //   'assets/images/beef.jpg',
  //   'assets/images/bread.jpg',
  //   'assets/images/flat-lay.jpg',
  //   'assets/images/fried-rice.jpg',
  //   'assets/images/hors-doeuvre.jpg',
  //   'assets/images/salmon.jpg',
  //   'assets/images/spaghetti.jpg',
  //   'assets/images/tacos.jpg',
  // ];

  final List<FoodModel> food = [
    FoodModel(
        image: 'assets/images/asparagus.jpg',
        title: "Asparagus",
        price: "Rp. 50.000"),
    FoodModel(
        image: 'assets/images/beans.jpg', title: "Beans", price: "Rp. 55.000"),
    FoodModel(
        image: 'assets/images/beef.jpg', title: "Beef", price: "Rp. 60.000"),
    FoodModel(
        image: 'assets/images/bread.jpg', title: "Bread", price: "Rp. 30.000"),
    FoodModel(
        image: 'assets/images/flat-lay.jpg',
        title: "Flat-Lay",
        price: "Rp. 60.000"),
    FoodModel(
        image: 'assets/images/fried-rice.jpg',
        title: "Fried Rice",
        price: "Rp. 28.000"),
    FoodModel(
        image: 'assets/images/hors-doeuvre.jpg',
        title: "Hors Doeuvre",
        price: "Rp. 60.000"),
    FoodModel(
        image: 'assets/images/salmon.jpg',
        title: "Salmon",
        price: "Rp. 60.000"),
    FoodModel(
        image: 'assets/images/spaghetti.jpg',
        title: "Spaghetti Carbonara",
        price: "Rp. 48.000"),
    FoodModel(
        image: 'assets/images/tacos.jpg',
        title: "Mexican Tacos",
        price: "Rp. 25.000"),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FULL COURSE MENU'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: food.length,
          itemBuilder: (BuildContext context, index) {
            var fooding = food[index];
            return Column(
              children: <Widget>[
                const SizedBox(
                  height: 8,
                ),
                Image.asset(
                  fooding.image,
                  height: 250,
                  width: 500,
                ),
                Text(fooding.title),
                Text(fooding.price),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NextPage()));
        },
        label: const Text('next'),
        icon: const Icon(Icons.arrow_right),
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Halaman Dua'),
//       ),
//       body: Container(
//         // alignment: Alignment.topCenter,
//         margin: const EdgeInsets.all(25),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 Text(
//                   '-BIODATA-',
//                   style: TextStyle(
//                     fontSize: 26,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 2,
//                     wordSpacing: 2,
//                     height: 2,
//                   ),
//                 ),
//               ],
//             ),
//             textDef(text: 'Jennie A'),
//             textDef(text: 'Bali'),
//             const TextWidget(text: 'dom: bali'),
//             const Text(
//               'HP: 0852-0000-2310',
//               style: TextStyle(
//                 wordSpacing: 2,
//                 height: 2,
//               ),
//             ),
//             const Text(
//               'Pekerjaan: Karyawan Swasta',
//               style: TextStyle(
//                 wordSpacing: 2,
//                 height: 2,
//               ),
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             const Image(
//               image: NetworkImage(
//                   'https://asset.kompas.com/crops/IOsSNW0uPZn76G_PyzBZu89SgRc=/105x32:905x565/750x500/data/photo/2020/01/23/5e29921146d88.jpg'),
//               width: 200,
//               height: 160,
//             ),
//             // const Spacer(),
//             const Image(
//               image: AssetImage('assets/images/flowerfields_keukenhof_2.jpg'),
//               width: 200,
//               height: 160,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget textDef({text}) {
//     return Row(
//       children: [
//         Text(
//           text,
//           style: const TextStyle(
//             wordSpacing: 2,
//             height: 2,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class TextWidget extends StatelessWidget {
//   const TextWidget({
//     Key? key,
//     required this.text,
//   }) : super(key: key);
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           text,
//           style: const TextStyle(
//             wordSpacing: 2,
//             height: 2,
//           ),
//         ),
//       ],
//     );
//   }
}
