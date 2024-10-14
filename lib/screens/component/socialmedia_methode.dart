import 'package:flutter/material.dart';

Widget SocialMedia({required String img, text}) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue.shade100),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}