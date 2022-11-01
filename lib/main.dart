import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_project/screens/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      title: 'Music Wibu Player',
      debugShowCheckedModeBanner: false,
      home: MyApp(AnimatedSplashScreen)));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.dark,
//       home: AnimatedSplashScreen(
//         splash: Image.network(
//             'https://images.hdqwalls.com/download/naruto-logo-anime-8k-qz-3840x2160.jpg'),
//         nextScreen: Home(),
//         duration: 5000,
//         pageTransitionType: PageTransitionType.fade,
//         backgroundColor: Colors.black,
//       ),
//     );
//   }
// }
