import 'package:flutter/material.dart';

import '../../modal/modal_page.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key, required this.lable, required this.color,});

  final LableModel lable;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:14,horizontal: 15),
      child: Row(
        children: [
          // ICON
          Icon(
            lable.icon,
            color:color ,
          ),
          const SizedBox(
            width: 26,
          ),

          // TITLE
          Text(
            lable.text,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}