import 'package:flutter/material.dart';
import 'core/theme_light.dart';
import 'food_card/food_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.instance.data,
      home: FoodCard(),
    );
  }
}
