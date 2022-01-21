import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/provider/color_provider.dart';
import 'package:calculator/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalProvider()),
        ChangeNotifierProvider(create: (context) => ColorProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'calculator',
      home: Home(),
    );
  }
}
