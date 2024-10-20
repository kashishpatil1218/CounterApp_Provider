// // import 'package:adv_provider/provider/homepage_provider.dart';
// // import 'package:adv_provider/screens/home_page.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // void main()
// // {
// //   runApp(const CounterApp());
// // }
// // class CounterApp extends StatelessWidget {
// //   const CounterApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider(
// //       create: (context)=> HomeProvider(),
// //       child: MaterialApp(
// //         debugShowCheckedModeBanner: false,
// //         home: HomePage(),
// //       ),
// //     );
// //   }
// // }
// //
// //
import 'package:adv_provider/one_Time_intro/screen/screen1.dart';
import 'package:adv_provider/one_Time_intro/screen/screen2.dart';
import 'package:adv_provider/one_Time_intro/screen/screen3.dart';
import 'package:adv_provider/stepper_Widget/provider/strepper_Provider.dart';
import 'package:adv_provider/stepper_Widget/views/steooer_page2.dart';
import 'package:adv_provider/stepper_Widget/views/stepper_Page1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Switch_user_theme/provider/themeProvider.dart';
import 'Switch_user_theme/screen/home_page.dart';
import 'one_Time_intro/screen/homePage.dart';
import 'one_Time_intro/screen/showImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StepperProvider(),
      child: Consumer<StepperProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),

            routes: {
              '/':(context)=> const Screen1(),
              '/s':(context)=> const Screen2(),
              '/s3':(context)=> const Screen3(),
              '/h1':(context)=> const HomePage1(),

            },
          );

        },
      ),
    );
  }
}
