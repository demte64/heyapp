import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperContainer extends StatefulWidget {

  final String text;
  final List<Widget> cards;

  SwiperContainer({Key key, @required this.text, @required this.cards}) : super(key: key);

  @override
  SwiperContainerState createState() => SwiperContainerState(this.text, this.cards);

}

class SwiperContainerState extends State<SwiperContainer> {

  String text;
  List <Widget> cards;

  SwiperContainerState(this.text, this.cards);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ),
            SizedBox(
              height: 200.0,
              child: Swiper(
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                pagination: new SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: new DotSwiperPaginationBuilder(
                      color: Colors.grey, activeColor: Colors.pinkAccent),
                ),
                //control: new SwiperControl(
                //  color: Colors.pinkAccent,
                //),
                itemBuilder: (context, index) {
                  return cards.elementAt(index);
                },
              )
            )
          ],
      ),
    );
  }

}

