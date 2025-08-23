import 'package:flutter/material.dart';
import 'package:iti/home_page.dart';
import 'package:iti/services/news_services.dart';
import 'CustomCont.dart';
import 'secondscreen.dart';

void main() {
  runApp(const MyApp());
  NewsServices().getGereralNews();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: home());
  }
}
