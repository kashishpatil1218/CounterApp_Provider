import 'package:flutter/material.dart';

class ProfileMethode extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Spacer(),
              Icon(
                Icons.add_circle_outline,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const AspectRatio(
          aspectRatio: 2.9,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/image/Anime-Girl-Pfp-PNG-Pic-Background.png'),
              ),
            ],
          ),
        ),
        Text(
          "Kashish Patil",
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}




