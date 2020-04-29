import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  String title;
  String image;
  CategoryCard(this.title, this.image);
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.scale(
                  scale: 1.5,
                  child: Image(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(this.widget.image))),
              Text(this.widget.title,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 20)),
            ]),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 5.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            )
          ],
        ),
      ),
    );
  }
}
