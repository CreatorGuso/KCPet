import 'package:flutter/material.dart';
import 'package:kcpet/screens/BarHome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Navigation Drawer',
        home: const Home(),
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ));
  }
}
