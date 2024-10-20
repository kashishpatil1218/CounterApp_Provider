import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
                  image: AssetImage('assets/image/intro3.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Text(
            'Personal desk space',
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
            "We don't believe in cubicles",
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
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF56B3BF),
                      borderRadius: BorderRadius.circular(15)),
                  child:TextButton(onPressed: () {
                    Navigator.of(context).pushNamed('/h1');
                  }, child: Text("Get started",style: TextStyle(color: Colors.white,fontSize: 12),))
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
