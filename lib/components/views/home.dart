import 'package:flutter/material.dart';
import 'package:heyanuncialo/components/adCard.dart';
import 'package:heyanuncialo/components/swiperDynamic.dart';

class HomeView extends StatelessWidget {

  List<Widget> cards = [AdCard(imgRoute: "https://heyanuncialo.com/img/Logo-HeyAnuncialo-SSS.png", text: "Prueba"),
                        AdCard(imgRoute: "https://heyanuncialo.com/img/Logo-HeyAnuncialo-SSS.png", text: "Prueba"),
                        AdCard(imgRoute: "https://heyanuncialo.com/img/Logo-HeyAnuncialo-SSS.png", text: "Prueba"),
                        AdCard(imgRoute: "https://heyanuncialo.com/img/Logo-HeyAnuncialo-SSS.png", text: "Prueba")];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwiperContainer(text: "Destacados", cards: cards,),
        SwiperContainer(text: "Lo más buscado", cards: cards,)
      ],
    );
  }

}