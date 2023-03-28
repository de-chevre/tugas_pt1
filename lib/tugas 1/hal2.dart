import 'package:flutter/material.dart';

class SecPage extends StatelessWidget {
  const SecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Dua'),
      ),
      body: Container(
        // alignment: Alignment.topCenter,
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '-BIODATA-',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    height: 2,
                  ),
                ),
              ],
            ),
            textDef(text: 'Jennie A'),
            textDef(text: 'Bali'),
            const TextWidget(text: 'dom: bali'),
            const Text(
              'HP: 0852-0000-2310',
              style: TextStyle(
                wordSpacing: 2,
                height: 2,
              ),
            ),
            const Text(
              'Pekerjaan: Karyawan Swasta',
              style: TextStyle(
                wordSpacing: 2,
                height: 2,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Image(
              image: NetworkImage(
                  'https://asset.kompas.com/crops/IOsSNW0uPZn76G_PyzBZu89SgRc=/105x32:905x565/750x500/data/photo/2020/01/23/5e29921146d88.jpg'),
              width: 200,
              height: 160,
            ),
            const Spacer(),
            const Image(
              image: AssetImage('assets/images/flowerfields_keukenhof_2.jpg'),
              width: 200,
              height: 160,
            ),
          ],
        ),
      ),
    );
  }

  Widget textDef({text}) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            wordSpacing: 2,
            height: 2,
          ),
        ),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            wordSpacing: 2,
            height: 2,
          ),
        ),
      ],
    );
  }
}
