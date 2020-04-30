import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/services.dart';
import 'package:in_game_item_store/widget/game_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              IconButton(
                icon: Icon(EvaIcons.shoppingBagOutline),
                onPressed: () => {},
                color: Colors.black,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                height: 20,
                width: 20,
                child: Text('2'),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        EvaIcons.personOutline,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                  ),
                  Text(
                    'Oarzx',
                    style: TextStyle(
                        fontSize: 30, color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Text('\$ 321.20',
                  style: TextStyle(
                      fontSize: 30, color: Theme.of(context).primaryColor))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('My favourite',
                  style: TextStyle(color: Colors.grey, fontSize: 20)),
              Icon(EvaIcons.settings2Outline, color: Colors.grey)
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20),
              children: <Widget>[
                GameCard('Counter Strike', 'assets/images/company_badge/0.jpg',
                    'assets/images/game_poster/0.jpg'),
                GameCard(
                    'League of Legends',
                    'assets/images/company_badge/1.jpg',
                    'assets/images/game_poster/1.jpg'),
                GameCard('Fortnite', 'assets/images/company_badge/2.jpg',
                    'assets/images/game_poster/2.jpg'),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          title: Container(),
          icon: Icon(EvaIcons.copyOutline),
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.personOutline),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.messageSquareOutline),
          title: Container(),
        ),
      ]),
    );
  }
}
