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
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Switch_user_theme/provider/themeProvider.dart';
import 'Switch_user_theme/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProviderSwitch(),
      child: Consumer<ThemeProviderSwitch>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeProvider.getThemeMode()
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
