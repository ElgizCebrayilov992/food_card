import 'package:flutter/material.dart';
import 'package:food_card/core/images/images_constant.dart';
import 'package:food_card/core/localete/aplication_string.dart';
abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {

  ApplicationStrings applicationStrings=ApplicationStrings.instance;
  TextTheme get textTheme=>Theme.of(context).textTheme;
  ThemeData get themeData=>Theme.of(context);
  ColorScheme get colorScheme=>Theme.of(context).colorScheme;
  ImageConstants get imageConstantss=> ImageConstants.instance;
  EdgeInsets get insetsAll=>EdgeInsets.all(20);
  double dynamicHeigth(double val)=> MediaQuery.of(context).size.height*val;
}