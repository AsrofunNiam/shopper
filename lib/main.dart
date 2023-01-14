import 'package:flutter/material.dart';
import 'package:shopper/src/app/ui/page/menu_navigation/menu_navigation_bar.dart';
// import 'package:learn_flutter_widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuNavigationBar(),
    );
  }
}
