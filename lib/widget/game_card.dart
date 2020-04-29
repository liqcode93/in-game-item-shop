import 'package:flutter/material.dart';
import 'package:in_game_item_store/pages/game_details.dart';

class GameCard extends StatefulWidget {
  String title;
  String developerLogo;
  String backgroundImg;

  GameCard(this.title, this.developerLogo, this.backgroundImg);

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GameDetailsPage()),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                  fit: BoxFit.fill,
                  image: AssetImage(this.widget.backgroundImg)),
              Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              child: Text(this.widget.title,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40)),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          this.widget.developerLogo)),
                                  color: Colors.white,
                                  shape: BoxShape.circle),
                            ),
                          ]),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.5),
                  )),
            ],
          ),
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
