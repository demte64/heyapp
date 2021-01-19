import 'package:flutter/material.dart';

class AdCard extends StatefulWidget {

  final String imgRoute;
  final String text;

  AdCard({Key key, @required this.imgRoute, @required this.text}) : super(key: key);

  @override
  AddCardState createState() => new AddCardState(this.imgRoute, this.text);

}

class AddCardState extends State<AdCard> {

  String imgRoute;
  String text;

  AddCardState(this.imgRoute, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(35),
      child: ClipRRect(
        child: Column(
          children: [
            Image(image: NetworkImage(this.imgRoute)),
            Text(this.text)
          ],
        ),
      ),
    );
  }

}