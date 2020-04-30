import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:in_game_item_store/widget/category_card.dart';
import 'package:in_game_item_store/widget/featuring_card.dart';

class GameDetailsPage extends StatefulWidget {
  @override
  _GameDetailsPageState createState() => _GameDetailsPageState();
}

class _GameDetailsPageState extends State<GameDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              flexibleSpace: Stack(
                fit: StackFit.expand,
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/game_poster/0-1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Container(
                      decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Counter',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                        Text('Strike',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                      ],
                    ),
                  )
                ],
              ),
              expandedHeight: 180.0,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(EvaIcons.shoppingBagOutline),
                  tooltip: 'Add new entry',
                  onPressed: () {/* ... */},
                ),
              ]),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FeaturingCard(),
                  Text('Category',
                      style: TextStyle(color: Colors.grey, fontSize: 20)),
                  Container(
                    height: 220,
                    child: ListView(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CategoryCard('SMG', 'assets/images/weapon/smg.png'),
                        CategoryCard('Rifle', 'assets/images/weapon/rifle.png'),
                        CategoryCard(
                            'Pistol', 'assets/images/weapon/pistol.png')
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
