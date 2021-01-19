import 'package:flutter/material.dart';
import 'views/publish.dart';
import 'views/chat.dart';
import 'views/categories.dart';
import 'views/account.dart';
import 'views/home.dart';

class BottomNavMenu extends StatefulWidget{

  @override
  BottomNavMenuState createState() => new BottomNavMenuState();

}

class BottomNavMenuState extends State<BottomNavMenu>{

  int selectedIndex = 0;
  List<Widget> menu = [HomeView(), CategoriesView(), PublishView(), ChatView(), AccountView()];

  void onTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Test")
      ),
      body: menu.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Categorías"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Vender"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Chatear"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Mi cuenta"
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.black,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true
      ),
    );
  }

}