import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomeCover extends StatefulWidget {
  const HomeCover({super.key});

  @override
  State<HomeCover> createState() => _HomeCover();
}

Widget _buildFullScreenImage(String assetName) {
  return Image.asset(
    'assets/images/$assetName',
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
  );
}

// Widget _buildImage(String assetName, [double width = 350]) {
//   return Image.asset(
//     'assets/images/$assetName',
//     width: width,
//   );
// }

class _HomeCover extends State<HomeCover> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      pageColor: Color.fromRGBO(228, 233, 230, 0.6),
      titleTextStyle: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.w700,
          fontFamily: 'PlayFair',
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: <Shadow>[
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 3.0,
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ]),
      bodyTextStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 20.0,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: <Shadow>[
            Shadow(
              offset: Offset(1.0, 2.0),
              blurRadius: 2.0,
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ]),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      // pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'BEST CHEF & KITCHEN',
          body:
              "we believe that all flavors come from the best hands. The best chefs and highly dedicated to every cuisine that can provide the best experience in your world. As well as the best kitchen that can present all the best works by our chefs for you.",
          image: _buildFullScreenImage('pic1.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 10),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
            safeArea: 10,
          ),

          // bodyWidget: const SizedBox(
          //   height: 34,
          //   width: 400,
          //   child: Padding(padding: EdgeInsets.all(20), child: Text('Opsi 3')),
          // ),
          // title: 'Opsi 3',
          // body: "opsi 3",
          // image: _buildFullScreenImage('salmon.jpg'),
          // decoration: pageDecoration.copyWith(
          //   contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          //   fullScreen: true,
          //   bodyFlex: 2,
          //   imageFlex: 3,
          //   safeArea: 100,
          // )
        ),
        PageViewModel(
          title: 'Nature Environment',
          body:
              "Being amidst the beauty and peace of nature shows how amazing this world is. Not only serving the best food but we also provide the best experience in enjoying every dish served. By enjoying the goodness that nature gives, you can feel calm within yourself and enjoy every bite of the menu of your choice.",
          image: _buildFullScreenImage('pic2.jpg'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 10),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
            safeArea: 10,
          ),
        ),
        PageViewModel(
          title: 'Quality Control',
          body:
              "The consistency and quality of each product that will be served must go through quality control carried out by our best chefs. The quality of raw materials has gone through the sorting stage and comes from local traders who work with us so that the ingredients we serve come from the best local farmers and breeders.",
          image: _buildFullScreenImage('pic3.jpg'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 10),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
            safeArea: 10,
          ),
        ),
      ],
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      showDoneButton: false,
      next: const Icon(Icons.arrow_forward),
      back: const Icon(Icons.arrow_back),
      dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          activeSize: Size(22.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
    );
  }
}
