import 'package:flutter/material.dart';
import 'package:bmkg_api_app/constants/colors.dart';
import 'package:bmkg_api_app/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fredo App',
      theme: ThemeData(
          primarySwatch: primary,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
