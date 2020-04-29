import 'package:flutter/material.dart';

class FeaturingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.passthrough,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text('Featuring',
                      style: TextStyle(color: Colors.grey, fontSize: 20)),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius:
                            10.0, // has the effect of softening the shadow
                        spreadRadius:
                            5.0, // has the effect of extending the shadow
                        offset: Offset(
                          5.0, // horizontal, move right 10
                          5.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Marble Fade',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Text('Knife',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10))),
                          Text('\$ 122.20',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Buy now',
                              style: TextStyle(
                                  color: Colors.orange, fontSize: 20)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Transform.scale(
              scale: 0.9,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/weapon/knife.png')),
            )
          ],
        ),
      ],
    );
  }
}
