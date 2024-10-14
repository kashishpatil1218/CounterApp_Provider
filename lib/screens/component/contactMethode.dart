import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

Container cotactUsDetail({required String information,required IconData icon}) {
  return Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.blue.shade200),
    ),
    child:  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            information,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}