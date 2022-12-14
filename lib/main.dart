import 'package:flutter/material.dart';

import 'Screens/HomeScreen/catogory_item_page.dart';
import 'Screens/HomeScreen/catogory_search.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashScreen(),
      // home: const CatogoryHomePage(),
      home: const CatogorySearch(),

    );
  }
}
