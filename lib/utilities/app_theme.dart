import 'package:flutter/material.dart';
 class AppTheme{
   /* note that ua amer we will make the properties of this class static to access it directly
   * without taking instances of this class it is important note ya amer
   * */
static ThemeData MyTheme=ThemeData(
  primaryColor: Colors.red,
  //textTheme: TextTheme(headline1: TextStyle(color: Colors.red)) ,
  //dividerColor: Colors.red,
) ;

static ThemeData secondTheme=ThemeData(primaryColor: Colors.teal);



}