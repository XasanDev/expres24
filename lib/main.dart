import 'package:flutter/material.dart';
import 'package:neww/screen/home_page.dart';

void main() {
  print("fff");
  print("kjkjk");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Vujahday',
      ),
      home: Scaffold(),
    );
  }
}
