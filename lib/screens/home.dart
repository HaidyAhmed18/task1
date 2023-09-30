import 'package:flutter/material.dart';
import 'package:task1/screens/screen1.dart';
import 'package:task1/screens/screen2.dart';
import 'package:task1/screens/screen3.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  late List<Widget> listScreens;

  @override
  void initState() {
    super.initState();
    listScreens = [
      Screen1(),
      Screen2(),
      Screen3(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'tab',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'tab1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'tab2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'tab3',
            ),
          ]),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
