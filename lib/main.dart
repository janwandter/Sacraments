import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sacraments',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sacraments")),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
              backgroundColor: Colors.orange[300]),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
              backgroundColor: Colors.orange[300]),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_rounded),
              label: "",
              backgroundColor: Colors.orange[300]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "",
              backgroundColor: Colors.orange[300]),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
