import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/image/intro2.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Text(
            'Stay in touch',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 1,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          const Text(
            'Reach out to anyone at anytime',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180, left: 50, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Color(0xFF56B3BF),
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/s3');
                      },
                      icon: Icon(
                        Icons.navigate_next,
                        size: 30,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
