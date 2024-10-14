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
// import 'package:adv_provider/provider/homepage_provider.dart';
// import 'package:adv_provider/provider/themeProvider.dart';
// import 'package:adv_provider/screens/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
//
//
// import 'package:provider/provider.dart';
// void main()
// {
//   runApp(TodoApp());
// }
//
// class TodoApp extends StatelessWidget {
//   const TodoApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_)=> TodoProvider()),
//         ChangeNotifierProvider(create: (_)=> ThemeProvider()),
//       ],
//       builder: (context,child){
//         final provider= Provider.of<ThemeProvider>(context);
//         return  MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData.light(),
//           darkTheme: ThemeData.dark(),
//           themeMode: (isDark)?ThemeMode.dark:ThemeMode.light,
//           home: HomePage(),
//         );
//       },
//     );
//   }
// }
// bool isDark = false;
import 'package:adv_provider/screens/url_Launcher.dart';
import 'package:flutter/material.dart';

void main()
 {
   runApp(const UrlLauncher());
 }

 class UrlLauncher extends StatelessWidget {
   const UrlLauncher({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: UrlScreen(),
     );
   }
 }
