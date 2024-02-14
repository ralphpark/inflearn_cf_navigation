
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inflearn_cf_navigation/screen/home_screen.dart';
import 'package:inflearn_cf_navigation/screen/route_one_screen.dart';
import 'package:inflearn_cf_navigation/screen/route_three_screen.dart';
import 'package:inflearn_cf_navigation/screen/route_two_screen.dart';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/one': (context) => RouteOneScreen(),
        '/two': (context) => RouteTwoScreen(),
        '/three': (context) => RouteThreeScreen(),
      },
    )
  );
}