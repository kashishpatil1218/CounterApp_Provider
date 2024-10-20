// import 'package:flutter/material.dart';
//
// class Screen1 extends StatelessWidget {
//   final PageController _pageController = PageController();
//    Screen1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//             child: Container(
//               height: 400,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 image: DecorationImage(
//                   image: AssetImage('assets/image/intro1.png'),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           const Text(
//             'Community',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 25,
//                 letterSpacing: 1,
//                 fontWeight: FontWeight.w700),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           const Text(
//             'Get to Know your coworkers',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 180, left: 50, right: 60),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Skip",
//                   style: TextStyle(
//                       color: Colors.grey.shade700,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 Container(
//                   height: 50,
//                   width: 55,
//                   decoration: BoxDecoration(
//                       color: Color(0xFF56B3BF),
//                       borderRadius: BorderRadius.circular(20)),
//                   child: IconButton(
//                       onPressed: () {
//                         Navigator.of(context).pushNamed('/s');
//                       },
//                       icon: Icon(
//                         Icons.navigate_next,
//                         size: 30,
//                         color: Colors.white,
//                       )),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatelessWidget {
  final PageController _pageController = PageController();

  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                ContantPage(
                  image: 'assets/image/intro1.png',
                  title: 'Community',
                  title2: 'Get to Know your coworkers',
                  icon: Icons.arrow_forward
                ),
                ContantPage(
                  image: 'assets/image/intro2.png',
                  title: 'Stay in touch',
                  title2: 'Reach out to anyone at anytime',
                  icon: Icons.arrow_back,
                ),
                ContantPage(
                  image: 'assets/image/intro3.png',
                  title: 'Personal desk space',
                  title2: "We don't delieve in cubicles",
                  icon:  Icons.arrow_back,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: WormEffect(
              dotColor: Colors.grey.shade400,
              activeDotColor: Color(0xFF56B3BF),
              dotHeight: 10,
              dotWidth: 10,
              spacing: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30,left:50,right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {

                    Navigator.of(context).pushNamed('/h1');
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFF56B3BF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {
                      final nextPage = _pageController.page!.toInt() + 1;
                      if (nextPage < 3) {
                        _pageController.animateToPage(
                          nextPage,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.of(context).pushNamed('/h1');
                      }
                    },
                    icon: Icon(
                      Icons.navigate_next,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget ContantPage({
    required String image,
    required String title,
    required String title2,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right:400),
            child: Icon(icon),
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              letterSpacing: 1,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          Text(
            title2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
