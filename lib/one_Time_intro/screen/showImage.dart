import 'package:adv_provider/one_Time_intro/screen/screen1.dart';
import 'package:adv_provider/one_Time_intro/screen/screen2.dart';
import 'package:adv_provider/one_Time_intro/screen/screen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController= PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
      children: [
        PageView(
          controller: pageController,
          children: [
            Screen1(),
            Screen2(),
            Screen3(),

          ],
        ),
        Container(
          alignment: Alignment(0,0),
            child: SmoothPageIndicator(controller: pageController, count: 3))
      ]
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      //       child: Container(
      //         height: 400,
      //         width: double.infinity,
      //         decoration: const BoxDecoration(
      //           color: Colors.black,
      //           image: DecorationImage(
      //             fit: BoxFit.fill,
      //             image: AssetImage(
      //               'assets/image/intro1.png',
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 20,),
      //     Text(
      //       'Community',
      //       style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 25,
      //           letterSpacing: 1,
      //           fontWeight: FontWeight.w700),
      //     ),
      //     SizedBox(height: 20,),
      //     Text(
      //       'Get to Know your coworkers',
      //       style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //          ),
      //     ),
      //
      //   ],
      // ),
    );
  }
}
