import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct(
      {super.key,
      required this.image,
      required this.title,
      required this.price});
  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            image,
            width: double.infinity,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'PlayFair'),
          ),
          Text(
            price,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'PlayFair'),
          ),
        ],
      ),
    );
  }
}
