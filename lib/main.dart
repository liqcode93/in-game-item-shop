import 'package:flutter/material.dart';
import 'package:in_game_item_store/pages/game_details.dart';
import 'package:in_game_item_store/pages/home.dart';
import 'package:in_game_item_store/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'impact',
        primarySwatch: appColorPallet,
      ),
      home: HomePage(),
    );
  }
}
