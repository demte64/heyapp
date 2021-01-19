import 'package:flutter/material.dart';
import 'components/bottomNavMenu.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Test",
      home: Main(),
    );
  }

}

class Main extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return BottomNavMenu();
  }

}