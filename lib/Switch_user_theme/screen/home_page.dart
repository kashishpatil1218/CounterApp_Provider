import 'package:adv_provider/Switch_user_theme/screen/utils/name_list.dart';
import 'package:flutter/material.dart';



import 'componetnt/Switch_With_Row.dart';
import 'componetnt/Switch_without_Row.dart';
import 'componetnt/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.surface,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.onSecondary,

    ];
    return Scaffold(
      body: Column(
        children: [
          ProfileMethode(),
          const SizedBox(
            height: 50,
          ),
          Text_Row_WithSwitch(context),
          ...List.generate(
              labelList.length,
              (index) => TextRow(
                    lable: labelList[index],
                    color: colors[0],
                  ))
        ],
      ),
    );
  }
}
