// import 'package:adv_provider/provider/homepage_provider.dart';
// import 'package:adv_provider/screens/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// void main()
// {
//   runApp(const CounterApp());
// }
// class CounterApp extends StatelessWidget {
//   const CounterApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context)=> HomeProvider(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: HomePage(),
//       ),
//     );
//   }
// }
//
//
import 'package:adv_provider/provider/homepage_provider.dart';
import 'package:adv_provider/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TodoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: (isDark)?ThemeMode.dark:ThemeMode.light,
        home: HomePage(),
      ),
    );
  }
}
bool isDark = false;